cask "juxtacode" do
  version "1.2.3"
  sha256 "848ecd8751ebca71b222e21566077964b0c3d8eb90be5ae733274f47a4699420"

  url "https://appcast.juxtacode.app/juxtacode-#{version}.zip"
  name "JuxtaCode"
  desc "Diff, merge, and compare code"
  homepage "https://juxtacode.app/"

  livecheck do
    url "https://appcast.juxtacode.app/juxtacode"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "JuxtaCode.app"
  binary "#{appdir}/JuxtaCode.app/Contents/MacOS/juxta"

  zap trash: [
    "~/Library/Application Scripts/com.naiveapps.juxtacode.JuxtaCodeHighlightService",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.naiveapps.juxtacode.sfl*",
    "~/Library/Caches/com.naiveapps.juxtacode",
    "~/Library/Caches/SentryCrash/JuxtaCode",
    "~/Library/Containers/com.naiveapps.juxtacode.JuxtaCodeHighlightService",
    "~/Library/HTTPStorages/com.naiveapps.juxtacode",
    "~/Library/HTTPStorages/com.naiveapps.juxtacode.binarycookies",
    "~/Library/Preferences/com.naiveapps.juxtacode.JuxtaCodeLocalChangesService.plist",
    "~/Library/Preferences/com.naiveapps.juxtacode.plist",
    "~/Library/Saved Application State/com.naiveapps.juxtacode.savedState",
  ]
end
