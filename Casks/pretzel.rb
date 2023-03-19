cask "pretzel" do
  version "2.12.0"
  sha256 "c84f5392df67945abb1da2b2a14df8f2e22835943f6594feb41ec893e3b408ff"

  url "https://download.pretzel.rocks/Pretzel-#{version}-universal-mac.zip"
  name "Pretzel"
  desc "DMCA-safe music for creators"
  homepage "https://www.pretzel.rocks/"

  livecheck do
    url "https://download.pretzel.rocks/latest-mac.yml"
    strategy :electron_builder
  end

  app "Pretzel.app"

  zap trash: [
    "~/Library/Application Support/@pretzel-aux",
    "~/Library/Logs/Pretzel",
    "~/Library/Preferences/rocks.pretzel.plist",
    "~/Library/Saved Application State/rocks.pretzel.savedState",
  ]
end
