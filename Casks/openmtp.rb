cask "openmtp" do
  arch arm: "arm64", intel: "x64"

  version "3.2.0"
  sha256 arm:   "7a6df0bca6c60dcf8653c5875372e1ff5f249cced2cc52ce6e04cee9f838d2cb",
         intel: "90c8412b9bf20b7f7bea08dea84e8c35ea8059847ca41d058d3131b75b81a831"

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
