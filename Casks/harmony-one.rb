cask "harmony-one" do
    version "4.3.0"
    sha256 "a8fd1a63f46886d51605c71fef15a7dabe5509dd35ce71ce5df2cc9ccad7860d"
  
    url "https://github.com/harmony-one/harmony/releases/download/v#{version}/harmony-macos-4.3.0.zip"
    name "Harmony One Blockchain Node"
    desc "Network node for the Harmony blockchain"
    homepage "https://github.com/harmony-one/harmony"

    

  

    
    artifact "./", target: "#{HOMEBREW_PREFIX}/harmony-one"
    
    
    # shim script (https://github.com/Homebrew/homebrew-cask/issues/18809)
    shimscript = "#{staged_path}/harmony-shim.sh"

    binary shimscript, target: "#{HOMEBREW_PREFIX}/bin/harmony-one"

    preflight do
        #system_command "/bin/mkdir", args: ["-p", "#{HOMEBREW_PREFIX}/harmony-one/"], sudo: true
        File.write shimscript, <<~EOS
            #!/bin/sh
            /usr/local/bin/harmony
        EOS
    end


    
    uninstall delete: ["#{HOMEBREW_PREFIX}/harmony-one"]

    caveats do
        unsigned_accessibility
      end
  end
  