cask "openmtp" do
  arch arm: "arm64", intel: "x64"

  version "3.2.25"
  sha256 arm:   "68f5acbe27c403943d025565ea404922a44fdead05d9708978295033267802dd",
         intel: "c780cc42f8236cd5655328f128f0e3e6093d316d8300380fddc98f78956edb62"

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
