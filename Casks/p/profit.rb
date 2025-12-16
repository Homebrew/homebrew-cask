cask "profit" do
  arch arm: "arm64", intel: "x64"

  version "1.0.42"
  sha256 :no_check

  url "https://downloadserver-cdn.nelogica.com.br/content/mac/stable/#{arch}/profit.dmg"
  name "Profit"
  desc "Financial trading software from Nelogica"
  homepage "https://www.nelogica.com.br/"

  livecheck do
    url "https://downloadserver-cdn.nelogica.com.br/content/mac/stable/#{arch}/version.json"
    strategy :json do |json|
      json["appVersion"]
    end
  end

  app "Profit.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.nelogica.profit.sfl*",
    "~/Library/Application Support/Profit",
    "~/Library/Caches/com.nelogica.profit",
    "~/Library/Logs/ProfitMac",
    "~/Library/Preferences/com.nelogica.profit.plist",
    "~/Library/Saved Application State/com.nelogica.profit.savedState",
  ]
end
