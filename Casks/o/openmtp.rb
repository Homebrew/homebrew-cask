cask "openmtp" do
  arch arm: "arm64", intel: "x64"

  version "3.3.0"
  sha256 arm:   "71c8ea9a7efa0a39bf443e56f79a88c2b2068d90d614761dc27584816d1f64ee",
         intel: "5740f93ff40ffc2c052c7f98b98150d88f1f3848a0d55a87a474e0843b80b407"

  url "https://github.com/ganeshrvel/openmtp/releases/download/v#{version}/openmtp-#{version}-mac-#{arch}.zip",
      verified: "github.com/ganeshrvel/openmtp/"
  name "OpenMTP"
  desc "Android file transfer"
  homepage "https://openmtp.ganeshrvel.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  app "OpenMTP.app"

  zap trash: [
    "~/.io.ganeshrvel",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/io.ganeshrvel.openmtp.sfl*",
    "~/Library/Application Support/io.ganeshrvel.openmtp",
    "~/Library/Application Support/OpenMTP",
    "~/Library/Preferences/io.ganeshrvel.openmtp.plist",
  ]
end
