cask "harmony-one" do
    version "4.3.0"
    sha256 "a8fd1a63f46886d51605c71fef15a7dabe5509dd35ce71ce5df2cc9ccad7860d"
  
    url "https://github.com/harmony-one/harmony/releases/download/v#{version}/harmony-macos-4.3.0.zip"
    name "Harmony One Blockchain Node"
    desc "Network node for the Harmony blockchain"
    homepage "https://github.com/harmony-one/harmony"
  
    

  



    binary "harmony"
    artifact "lib", target: "/usr/local/lib/harmony-one"
    
    def configure_zshrc
                
        # Add DYLD_FALLBACK_LIBRARY_PATH 
        open('~/.zshrc', 'a') do |f|
            f.puts "export DYLD_FALLBACK_LIBRARY_PATH=/usr/local/lib/harmony-one:$DYLD_FALLBACK_LIBRARY_PATH"
            end
        end
        
    postflight do
        set_ownership [ "#{HOMEBREW_PREFIX}/bin/harmony-one", "/usr/local/lib/harmony-one"]
        configure_zshrc
        #system_command "/bin/source" ["~/.zshrc"]
    end
    
    uninstall delete: ["#{HOMEBREW_PREFIX}/bin/harmony-one", "#{HOMEBREW_PREFIX}/lib/harmony-one"]

    caveats do
        unsigned_accessibility
      end
  end
  