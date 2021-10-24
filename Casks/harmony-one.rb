cask "harmony-one" do

    # Utility to correctly link dylibs to binary. 
    # Guidance appreciated if theres a more efficient method

    module Utils
        def self.installer
            File.write  "#{staged_path}/#{version}/dylib_installer.sh", <<~EOS
            #!/usr/bin/env bash
        
            # Licensed by author Alex Birch under CC BY-SA 4.0
            # https://creativecommons.org/licenses/by-sa/4.0/
            
            # Example input:
            # ./make_portable.sh mycoolbinary
            # where mycoolbinary is a mach-o object file
            # (for example an executable binary or a .dylib)
            #
            # this script rewrites your file's every environment-specific
            # dynamic link (recursively!)
            # such that they point to local .dylibs.
            # these .dylibs are then copied to a folder lib, next to your binary
            #
            # by environment-specific I mean any link to a .dylib under /usr/local
            
            set -o pipefail
            
            # error handler by Charles Duffy
            # https://stackoverflow.com/q/64786
            error() {
              local parent_lineno="$1"
              local message="$2"
              local code="${3:-1}"
              if [[ -n "$message" ]] ; then
                echo "Error on or near line ${parent_lineno}: ${message}; exiting with status ${code}"
              else
                echo "Error on or near line ${parent_lineno}; exiting with status ${code}"
              fi
              exit "${code}"
            }
            trap 'error ${LINENO}' ERR
            
            BINARY="$1"
            BINARYDIR=$(dirname "$BINARY")
            LIBREL="lib"
            LIB="$BINARYDIR/$LIBREL"
            
            # make a lib folder
            mkdir -p "$LIB"
            
            # find every LC_LOAD_DYLIB command in the obj file
            # filter to just loads under /usr/local
            # print the absolute path of each such dylib
            get_env_specific_direct_dependencies () {
              # otool -L shows us every LC_LOAD_DYLIB plus LC_ID_DYLIB
              # otool -D shows us just LC_ID_DYLIB
              ALL_DYLIBS=$(otool -L "$1" | awk 'NR>1')
              DYLIB_ID=$(otool -D "$1" | awk 'NR>1')
              if [ -z "$DYLIB_ID" ]; then
                DIRECT_DEPS="$ALL_DYLIBS"
              else
                DIRECT_DEPS=$(echo "$ALL_DYLIBS" | grep -v "$DYLIB_ID")
              fi
              echo "$DIRECT_DEPS" \
              | awk '/\/usr\/local\//,/.dylib/ {print $1}'
            }
            
            # lookup LC_LOAD_DYLIB commands in an obj file,
            # then follow those loads and ask the same of each
            # of its dylibs, recursively
            get_env_specific_dependencies_recursive () {
              while read -r obj; do
                [ -z "$obj" ] && continue
                echo "$obj"
                get_env_specific_dependencies_recursive "$obj"
              done < <(get_env_specific_direct_dependencies "$1")
            }
            
            DEP_PATHS=$(get_env_specific_dependencies_recursive "$BINARY")
            
            mkdir -p "$LIB"
            # copy each distinct dylib in the dependency tree into our lib folder
            echo "$DEP_PATHS" \
            | xargs -n1 realpath \
            | sort \
            | uniq \
            | xargs -I'{}' cp {} "$LIB/"
            
            chmod +w "$LIB"/*.dylib
            
            while read -r obj; do
              [ -z "$obj" ] && continue
              OBJ_LEAF_NAME=$(echo "$obj" | awk -F'/' '{print $NF}')
              # rewrite the install name of this obj file. completely optional.
              # provides good default for future people who link to it.
              install_name_tool -id "@rpath/$OBJ_LEAF_NAME" "$obj"
            
              # iterate over every LC_LOAD_DYLIB command in the objfile
              while read -r load; do
                [ -z "$load" ] && continue
                LOAD_LEAF_NAME=$(echo "$load" | awk -F'/' '{print $NF}')
                # rewrite a LC_LOAD_DYLIB command in this obj file
                # to point relative to @rpath
                install_name_tool -change "$load" "@rpath/$LOAD_LEAF_NAME" "$obj"
              done < <(get_env_specific_direct_dependencies "$obj")
            done < <(cat <(echo "$BINARY") <(echo "$DEP_PATHS" | awk -F'/' -v l="$LIB" -v OFS='/' '{print l,$NF}'))
            
            # define in our binary what it should expand the
            # runtime search path @rpath to
            install_name_tool -add_rpath "@loader_path/$LIBREL" "$BINARY"

            EOS


                
        end
      end


    version "4.3.0"
    sha256 "a8fd1a63f46886d51605c71fef15a7dabe5509dd35ce71ce5df2cc9ccad7860d"
  
    url "https://github.com/harmony-one/harmony/releases/download/v#{version}/harmony-macos-4.3.0.zip"
    name "Harmony One Blockchain Node"
    desc "Network node for the Harmony blockchain"
    homepage "https://github.com/harmony-one/harmony"
  

    binary "harmony"
    

    preflight do
        Utils.installer
        system_command "/bin/bash" ["#{HOMEBREW_PREFIX}/Caskroom/harmony-one/#{version}/dylib_installer.sh", "harmony"]
    end 

  



    
    uninstall delete: ["#{HOMEBREW_PREFIX}/bin/harmony", "#{HOMEBREW_PREFIX}/lib/harmony-one"]

    caveats do
        unsigned_accessibility
      end
  end
  