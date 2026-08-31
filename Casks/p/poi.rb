cask "poi" do
  arch arm: "-arm64"

  version "12.0.1"
  sha256 arm:   "d63b94de386ea8835c4e23bd2100ea20e8e33edf52f940d9c0419b71722f1c55",
         intel: "411e3e76e22b1780b281ae3b58a405e6a9bf950653dc14a484c5b5f5a0ffbe8e"

  url "https://github.com/poooi/poi/releases/download/v#{version}/poi-#{version}#{arch}.dmg"
  name "poi"
  desc "Scalable KanColle browser and tool"
  homepage "https://poi.moe/"

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on macos: :ventura

  app "poi.app"

  zap trash: [
    "~/Library/Application Support/poi",
    "~/Library/Preferences/org.poooi.poi.helper.plist",
  ]
end
