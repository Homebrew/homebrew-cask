cask "harmony-node" do
    version "4.3.0"
    sha256 "a8fd1a63f46886d51605c71fef15a7dabe5509dd35ce71ce5df2cc9ccad7860d"
  
    url "https://github.com/harmony-one/harmony/releases/download/v#{version}/harmony-macos-4.3.0.zip"
    name "Harmony One Blockchain Node"
    desc "Network node for the Harmony blockchain"
    homepage "https://github.com/harmony-one/harmony"
  
    

  

    artifact "./", target: "/usr/local/bin/harmony-node/"
    artifact "lib/*", target: "/usr/local/lib/harmony-node"
    


    uninstall delete: ["#{HOMEBREW_PREFIX}/bin/harmony-node"]

    caveats do
        unsigned_accessibility
      end
  end
  