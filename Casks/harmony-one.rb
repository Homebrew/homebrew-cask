cask "harmony-one" do
    version "4.3.0"
    sha256 "a8fd1a63f46886d51605c71fef15a7dabe5509dd35ce71ce5df2cc9ccad7860d"
  
    url "https://github.com/harmony-one/harmony/releases/download/v#{version}/harmony-macos-#{version}.zip"

    name "Harmony One Blockchain Node"
    desc "Network node for the Harmony blockchain"
    homepage "https://github.com/harmony-one/harmony"



  

    # Copy artifacts to the Application Directory
    artifact "./", target: "#{HOMEBREW_PREFIX}/harmony-one"
    
    
    # shim script (https://github.com/Homebrew/homebrew-cask/issues/18809)
    # Could not think of a more effective way to go about correctly linking these dylibs. Guidance appreciated if theres is a better method.
    shimscript = "#{staged_path}/harmony-shim.sh"

    binary shimscript, target: "#{HOMEBREW_PREFIX}/bin/harmony-one"

    preflight do

        File.write shimscript, <<~EOS
            #!/bin/sh
            cd /usr/local/harmony-one/
            ./harmony "$@"
        EOS
    end


    # Delete application directory created    
    uninstall delete: ["#{HOMEBREW_PREFIX}/harmony-one"]

    # Due to Macos Security you will have to verify the unsigned binary as well as each of the dylib libraries. 
    caveats do
        unsigned_accessibility
      end
    # After Successfull Completion of Security Validation you will get the following error unless you have created a wallet and have its corresponding keys:
    # "ERROR when loading bls key: stat ./.hmy/blskeys: no such file or directory"


  end
  