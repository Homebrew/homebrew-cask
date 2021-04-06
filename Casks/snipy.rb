cask "snipy" do
  version "1.0.0"
  sha256 "7d9a16adc7af9abce398fa536829c1aa62c60ead2a1251ed69ea93738444c3dc"

  url "https://get.snipy.io/Snipy-#{version}-mac.zip"
  appcast "https://ta-production-snipy-releases.s3.amazonaws.com/latest-mac.yml"
  name "Snipy"
  desc "Snippet manager with sharing support"
  homepage "https://snipy.io/"

  auto_updates true

  app "Snipy.app"

  zap trash: [
    "~/Library/Application Support/Snipy",
    "~/Library/Logs/Snipy",
    "~/Library/Preferences/io.snipy.app.plist",
    "~/Library/Saved Application State/io.snipy.app.savedState",
  ]
end
