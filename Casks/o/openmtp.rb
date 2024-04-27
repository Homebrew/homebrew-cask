cask "openmtp" do
  arch arm: "arm64", intel: "x64"

  version "3.2.20"
  sha256 arm:   "4686774d78ae90d88ca34211cc4644a2e5ce92e4e934bf01b13b6b3070b847fc",
         intel: "efb76f376a774514dc14696e3f26d3f4bbac63a7279d45760eb5dbabface632d"

  url "https://github.com/ganeshrvel/openmtp/releases/download/v#{version}/openmtp-#{version}-mac-#{arch}.zip",
      verified: "github.com/ganeshrvel/openmtp/"
  name "OpenMTP"
  desc "Android file transfer"
  homepage "https://openmtp.ganeshrvel.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "OpenMTP.app"

  zap trash: [
    "~/.io.ganeshrvel",
    "~/Library/Application Support/io.ganeshrvel.openmtp",
    "~/Library/Application Support/OpenMTP",
    "~/Library/Preferences/io.ganeshrvel.openmtp.plist",
  ]
end
