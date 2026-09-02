cask "snagit" do
  version "2026.3.2"
  sha256 "13334f8d9eb1d70f9ff63ff0cba0e8e6d27c1cee93baccee433eed8977dd14db"

  url "https://download.techsmith.com/snagitmac/releases/#{version}/snagit.dmg"
  name "Snagit"
  desc "Screen capture software"
  homepage "https://www.techsmith.com/screen-capture.html"

  livecheck do
    url "https://www.techsmith.com/api/v/1/products/getallversions/100"
    strategy :json do |json|
      json.map do |item|
        next if item["Major"].blank? || item["Minor"].blank? || item["Maintenance"].blank?

        "20#{item["Major"]}.#{item["Minor"]}.#{item["Maintenance"]}"
      end
    end
  end

  depends_on macos: :sequoia

  app "Snagit.app"

  uninstall quit: "com.TechSmith.Snagit"

  zap trash: [
    "~/Library/Application Scripts/7TQL462TU8.com.techsmith.snagit",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.techsmith.snagit.sfl*",
    "~/Library/Application Support/Snagit",
    "~/Library/Caches/com.TechSmith.Snagit*",
    "~/Library/Group Containers/*.com.techsmith.snagit",
    "~/Library/HTTPStorages/com.TechSmith.Snagit*",
    "~/Library/Preferences/com.TechSmith.Snagit*.plist",
    "~/Library/Preferences/com.techsmith.snagit.capturehelper*.plist",
    "~/Library/Saved Application State/com.TechSmith.Snagit*.savedState",
    "~/Library/WebKit/com.TechSmith.Snagit*",
  ]
end
