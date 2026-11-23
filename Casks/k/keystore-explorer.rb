cask "keystore-explorer" do
  arch arm: "arm64", intel: "x64"

  version "5.7.1"
  sha256 arm:   "11bf9c73606df8d3fa7a781e1348258a39801f55b674564f57739ad5c21476f5",
         intel: "34d4f7dbf3714d508e8f5bcb5b54baeea74c533757b95a2586afdd5316b6717f"

  url "https://github.com/kaikramer/keystore-explorer/releases/download/v#{version}/kse-#{version.no_dots}-#{arch}.dmg"
  name "KeyStore Explorer"
  desc "GUI replacement for the Java command-line utilities keytool and jarsigner"
  homepage "https://keystore-explorer.org/"

  livecheck do
    url "https://keystore-explorer.org/version.txt"
    regex(/(\d+(?:\.\d+)+)/i)
  end

  depends_on :macos

  app "KeyStore Explorer.app"

  zap trash: [
    "~/Library/Preferences/org.kse.keystore-explorer.plist",
    "~/Library/Saved Application State/org.kse.keystore-explorer.savedState",
  ]
end
