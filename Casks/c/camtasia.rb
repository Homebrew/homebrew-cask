cask "camtasia" do
  version "25.2.3"
  sha256 "8ae3db902423b9ac5998f10705604eb1adaa31a0b59d82644c5233760ac019c4"

  url "https://download.techsmith.com/camtasiamac/releases/#{version.no_dots}/Camtasia.dmg"
  name "Camtasia"
  desc "Screen recorder and video editor"
  homepage "https://www.techsmith.com/video-editor.html"

  livecheck do
    url "https://www.techsmith.com/api/v/1/products/getallversions/9"
    strategy :json do |json|
      json.map do |item|
        "#{item["Major"]}.#{item["Minor"]}.#{item["Maintenance"]}"
      end
    end
  end

  auto_updates true
  depends_on macos: ">= :ventura"

  app "Camtasia.app"

  zap trash: [
    "/Users/Shared/TechSmith/Camtasia",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.techsmith.camtasia#{version.major}.sfl*",
    "~/Library/Application Support/TechSmith/Camtasia*",
    "~/Library/Caches/com.plausiblelabs.crashreporter.data/com.techsmith.camtasia*",
    "~/Library/Caches/com.techsmith.camtasia*",
    "~/Library/HTTPStorages/com.techsmith.camtasia*",
    "~/Library/HTTPStorages/com.techsmith.camtasia*.binarycookies",
    "~/Library/Preferences/com.techsmith.camtasia*.plist",
    "~/Library/Saved Application State/com.techsmith.camtasia*.savedState",
    "~/Library/WebKit/com.techsmith.camtasia*",
  ]
end
