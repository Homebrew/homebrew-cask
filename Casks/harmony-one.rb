cask "harmony-one" do
    version "4.3.0"
    sha256 "a8fd1a63f46886d51605c71fef15a7dabe5509dd35ce71ce5df2cc9ccad7860d"
  
    url "https://github.com/harmony-one/harmony/releases/download/v#{version}/harmony-macos-4.3.0.zip"
    name "Harmony One Blockchain Node"
    desc "Network node for the Harmony blockchain"
    homepage "https://github.com/harmony-one/harmony"
    license "LGPL-3.0-or-later"

    depends_on "curl"
    
    

  



    binary "harmony"
    #lib.install Dir["lib/*.dylib"]    

=begin   
  # shim script (https://github.com/Homebrew/homebrew-cask/issues/18809)
  shimscript = "#{staged_path}/armitage.wrapper.sh"
  binary shimscript, target: "armitage"

  preflight do
    File.write shimscript, <<~EOS
      #!/bin/sh
      java "$@" -jar '#{appdir}/Armitage.app/Contents/Java/armitage.jar'
    EOS
  end
end
=end 
    #ßuninstall delete: ["#{HOMEBREW_PREFIX}/bin/harmony-node"]

    caveats do
        unsigned_accessibility
      end
  end
  