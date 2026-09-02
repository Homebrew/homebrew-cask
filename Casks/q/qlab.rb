cask "qlab" do
  version "5.6.3"
  sha256 "fa655221b20f5add503faedfacd1d8d3b37a24f0ac7b05736c3e61e905300dea"

  url "https://qlab.app/downloads/archive/QLab-#{version}.zip"
  name "QLab"
  desc "Sound, video and lighting control"
  homepage "https://qlab.app/"

  livecheck do
    url "https://qlab.app/appcast/v#{version.major}/"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :big_sur

  app "QLab.app"

  zap trash: [
    "~/Library/Application Support/QLab",
    "~/Library/HTTPStorages/com.figure53.QLab.#{version.major}",
    "~/Library/Preferences/com.figure53.QLab.#{version.major}.plist",
    "~/Library/Saved Application State/com.figure53.QLab.#{version.major}.savedState",
  ]
end
