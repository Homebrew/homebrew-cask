cask "harmony-one" do
    version "4.3.0"
    sha256 "a8fd1a63f46886d51605c71fef15a7dabe5509dd35ce71ce5df2cc9ccad7860d"
  
    url "https://github.com/harmony-one/harmony/releases/download/v#{version}/harmony-macos-4.3.0.zip"
    name "Harmony One Blockchain Node"
    desc "Network node for the Harmony blockchain"
    homepage "https://github.com/harmony-one/harmony"
  
    

  



    binary "harmony", target: "#{HOMEBREW_PREFIX}/harmony-one/#{version}/"
    artifact "lib/", target: "#{HOMEBREW_PREFIX}/harmony-one/#{version}/"

    postflight do
        #set_ownership [ "#{HOMEBREW_PREFIX}/harmony-one/#{version}/"]

        system_command "/bin/export", ["DYLD_FALLBACK_LIBRARY_PATH=#{HOMEBREW_PREFIX}/harmony-one/#{version}/lib/:$DYLD_FALLBACK_LIBRARY_PATH"]
        system_command "/bin/export", ["PATH=#{HOMEBREW_PREFIX}/harmony-one/#{version}/:$PATH"]

    end
    
    uninstall delete: ["#{HOMEBREW_PREFIX}/harmony-one"]

    caveats do
        unsigned_accessibility
      end
  end
  