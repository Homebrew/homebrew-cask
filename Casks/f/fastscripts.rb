cask "fastscripts" do
  version "3.3.9"
  sha256 "9f92dbe3d899982a2a34f155ed2ecd94de1b0803a8057c6503600427996a5534"

  url "https://redsweater.com/fastscripts/FastScripts#{version}.zip"
  name "FastScripts"
  desc "Tool for running time-saving scripts"
  homepage "https://redsweater.com/fastscripts/"

  livecheck do
    url "https://redsweater.com/fastscripts/appcast#{version.major}.php"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on :macos

  app "FastScripts.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.red-sweater.fastscripts#{version.major}.sfl*",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.red-sweater.fastscripts.rsscriptrunner.sfl*",
    "~/Library/Application Support/FastScripts Script Runner",
    "~/Library/Application Support/FastScripts",
    "~/Library/Caches/com.red-sweater.fastscripts#{version.major}",
    "~/Library/Preferences/com.red-sweater.fastscripts#{version.major}.plist",
    "~/Library/WebKit/com.red-sweater.fastscripts#{version.major}",
  ]
end
