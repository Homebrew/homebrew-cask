cask "keystore-explorer" do
  version "5.5.2"
  sha256 "5ef7573cda01e3db0d8ffc0e285634b600011ae0b0ea307355bb844a99dc3b5a"

  url "https://github.com/kaikramer/keystore-explorer/releases/download/v#{version}/kse-#{version.no_dots}.dmg",
      verified: "github.com/kaikramer/keystore-explorer/"
  name "KeyStore Explorer"
  desc "GUI replacement for the Java command-line utilities keytool and jarsigner"
  homepage "https://keystore-explorer.org/"

  app "KeyStore Explorer.app"

  zap trash: "~/Library/Saved Application State/org.kse.keystore-explorer.savedState"
end
