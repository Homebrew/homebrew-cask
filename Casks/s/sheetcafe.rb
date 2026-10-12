cask "sheetcafe" do
  version "2.7.5"
  sha256 "ca400a6a0eb0e1f8a227459d00f587d096698fd67cce070883f8af5d26be2d62"

  url "https://download.getapps.cafe/SheetCafe_#{version}_universal.dmg"
  name "SheetCafe"
  desc "Spreadsheet editor for XLSX, XLS and CSV files"
  homepage "https://getapps.cafe/app/sheetcafe"

  livecheck do
    url "https://getapps.cafe/app/sheetcafe/version"
    strategy :json do |json|
      json.dig("mac", "version")
    end
  end

  depends_on :macos

  app "SheetCafe.app"

  zap trash: [
    "~/Library/Application Support/cafe.getapps.sheetcafe",
    "~/Library/Caches/cafe.getapps.sheetcafe",
    "~/Library/Caches/SheetCafe",
    "~/Library/Preferences/cafe.getapps.sheetcafe.plist",
    "~/Library/WebKit/cafe.getapps.sheetcafe",
  ]
end
