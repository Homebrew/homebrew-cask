cask "camtasia" do
  version "2027.0.1"
  sha256 "1b13d2bb005e9de78fdee325bafaf982c5b4783055f9482b24ab8e6a666f02cd"

  url "https://download.techsmith.com/camtasiamac/releases/#{version}/Camtasia.dmg"
  name "Camtasia"
  desc "Screen recorder and video editor"
  homepage "https://www.techsmith.com/video-editor.html"

  livecheck do
    url "https://www.techsmith.com/api/v/1/products/getallversions/9"
    strategy :json do |json|
      json.map do |item|
        "20#{item["Major"]}.#{item["Minor"]}.#{item["Maintenance"]}"
      end
    end
  end

  auto_updates true
  depends_on macos: :sequoia

  app "Camtasia.app"

  uninstall launchctl: [
    "com.techsmith.CamtasiaConnector.Camtasia",
    "com.techsmith.TechSmithAgent",
  ]

  zap trash: [
    "/Users/Shared/TechSmith/Camtasia",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.techsmith.camtasia*.sfl*",
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
