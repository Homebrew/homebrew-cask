cask "keystore-explorer" do
  arch arm: "arm64", intel: "x64"

  version "5.6.0"
  sha256 arm:   "3bc193e6f9f644ad9d81b1493d2250a190af6c83b3f11accbe05676d9e50fcf9",
         intel: "adbc55d3b04f8987875c859a36d0190e4f779b2c58a23abed20143063c5accdc"

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
end
