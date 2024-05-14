cask "camtasia" do
  version "2023.3.15"
  sha256 "e98025adf7aa48c6de197f32177691f6dfa4494396951e973139be88772cb528"

  url "https://download.techsmith.com/camtasiamac/releases/#{version.major[-2..]}#{version.minor_patch.no_dots}/Camtasia.dmg"
  name "Camtasia"
  desc "Screen recorder and video editor"
  homepage "https://www.techsmith.com/video-editor.html"

  livecheck do
    url "https://support.techsmith.com/api/v2/help_center/en-us/articles/115006624748"
    regex(/Camtasia\s*(\d+(?:\.\d+)+)/i)
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Camtasia #{version.major}.app"

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
