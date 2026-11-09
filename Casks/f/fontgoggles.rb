cask "fontgoggles" do
  version "1.9.5"
  sha256 "fc4bc45ab2520dbd1548efa37b750876bd0279a55d52c51bc0c394d06990b72e"

  url "https://github.com/justvanrossum/fontgoggles/releases/download/v#{version}/FontGoggles.dmg"
  name "FontGoggles"
  desc "Font viewer for various font formats"
  homepage "https://fontgoggles.org/"

  depends_on :macos

  app "FontGoggles.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.github.justvanrossum.fontgoggles.sfl*",
    "~/Library/Preferences/com.github.justvanrossum.FontGoggles.plist",
  ]
end
