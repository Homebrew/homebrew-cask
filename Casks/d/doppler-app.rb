cask "doppler-app" do
  version "2.1.22"
  sha256 "5eec9fa490fc6d9d287ab6c19d0854ff419ac80c398bfcab0f14dd4a4178e3b2"

  url "https://assets.brushedtype.co/Doppler-#{version}.app.zip"
  name "Doppler"
  desc "Music player"
  homepage "https://brushedtype.co/doppler/"

  # Download url is unreachable due to Cloudflare protections
  disable! date: "2026-01-25", because: :unreachable

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
