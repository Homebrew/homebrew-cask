cask "openmtp" do
  arch arm: "arm64", intel: "x64"

  version "3.2.23"
  sha256 arm:   "c35aa6ca2862ff5a8c0aea252b7117475f5700810491a34ff499031b1e909c78",
         intel: "1ead0e48a80d8baa5c242778f4adbb150f1242abfd788111d3a34bc0dd89e8ad"

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
