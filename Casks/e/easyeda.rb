cask "easyeda" do
  arch arm: "arm64", intel: "x64"

  version "6.5.51"
  sha256 arm:   "c683c0a61825219bc84fe76e21433a481384177d2e33ddc209c172ae5b227033",
         intel: "a4568fb7c27d5640994c8a52c75987a4e19d05adcdebec5b5eb7298788bfbe37"

  url "https://image.easyeda.com/files/easyeda-mac-#{arch}-#{version}.zip"
  name "EasyEDA"
  desc "PCB design tool"
  homepage "https://easyeda.com/"

  livecheck do
    url "https://easyeda.com/api/latestClientVersion"
    strategy :json do |json|
      json["result"]
    end
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  app "EasyEDA.app"

  zap trash: [
    "~/Library/Application Support/EasyEDA",
    "~/Library/Logs/EasyEDA",
    "~/Library/Preferences/com.easyeda.editor.helper.plist",
    "~/Library/Preferences/com.easyeda.editor.plist",
    "~/Library/Saved Application State/com.easyeda.editor.savedState",
  ]
end
