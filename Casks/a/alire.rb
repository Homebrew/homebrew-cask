cask "alire" do
  version "2.1.0"
  sha256 "f94b8f644891cb03a838ee14bd91c2115a78951f3f081cf799928b006a93cc4a"

  url "https://github.com/alire-project/alire/releases/download/v#{version}/alr-#{version}-bin-universal-macos.zip",
      verified: "github.com/alire-project/alire/"
  name "alire"
  desc "Ada Libraries REspository. Use alr to get, build, and incorporate Ada libraries"
  homepage "https://alire.ada.dev/"

  livecheck do
    url :url
    strategy :github_latest
  end

  binary "bin/alr"

  zap trash: "~/.config/alire"

  caveats do
    <<~EOS
      On recent macOS versions you may need to remove quarantine:
        xattr -d com.apple.quarantine "$(brew --prefix)/bin/alr"
    EOS
  end
end
