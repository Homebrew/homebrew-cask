cask "doppler" do
  version "2.1.22"
  sha256 :no_check

  url "https://updates.brushedtype.co/doppler-macos/download"
  name "Doppler"
  desc "Music player"
  homepage "https://brushedtype.co/doppler/"

  livecheck do
    url "https://updates.brushedtype.co/doppler-macos/appcast.xml"
    strategy :sparkle, &:short_version
  end

  depends_on macos: ">= :big_sur"

  app "Doppler.app"

  zap trash: [
    "~/.doppler",
    "~/Library/Application Support/Doppler",
    "~/Library/Caches/co.brushedtype.doppler-macos",
    "~/Library/Doppler",
    "~/Library/HTTPStorages/co.brushedtype.doppler-macos",
    "~/Library/HTTPStorages/co.brushedtype.doppler-macos.binarycookies",
    "~/Library/Preferences/co.brushedtype.doppler-macos.plist",
    "~/Library/Saved Application State/co.brushedtype.doppler-macos.savedState",
    "~/Music/Doppler",
  ]
end
