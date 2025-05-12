cask "keystore-explorer" do
  version "5.5.3"
  sha256 "b7294dd814bc339e51e9884657e9919f907def1b8c4ce3546c6ecba5f9d81d9f"

  url "https://github.com/kaikramer/keystore-explorer/releases/download/v#{version}/kse-#{version.no_dots}.dmg",
      verified: "github.com/kaikramer/keystore-explorer/"
  name "KeyStore Explorer"
  desc "GUI replacement for the Java command-line utilities keytool and jarsigner"
  homepage "https://keystore-explorer.org/"

  livecheck do
    url "https://keystore-explorer.org/version.txt"
    regex(/(\d+(?:\.\d+)+)/i)
  end

  app "KeyStore Explorer.app"

  zap trash: "~/Library/Saved Application State/org.kse.keystore-explorer.savedState"

  caveats do
    requires_rosetta
  end
end
