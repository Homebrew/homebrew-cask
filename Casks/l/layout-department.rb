cask "layout-department" do
  arch arm: "arm64", intel: "x64"

  version "0.9.1"
  sha256 arm:   "5fac36efccd268ae74d51720baa6d17a5d6ddaab0d351b69a389ec1bca3b95f9",
         intel: "734642fb8b562af7d4d0cf26715aa404e5898ee10186f924b4131b395c2f1096"

  url "https://downloads.layoutdepartment.com/Layout%20Department-Mac-#{version}-#{arch}.zip"
  name "Layout Department"
  desc "Imposition software for laying out books, zines and booklets from PDFs"
  homepage "https://layoutdepartment.com/"

  livecheck do
    url "https://downloads.layoutdepartment.com/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: :monterey

  app "Layout Department.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.anemone.layout-department.sfl*",
    "~/Library/Application Support/Layout Department",
    "~/Library/Logs/Layout Department",
    "~/Library/Preferences/com.anemone.layout-department.plist",
  ]
end
