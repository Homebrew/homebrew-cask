cask "macdown" do
  version "0.7.2"
  sha256 "271f11eb64c19fccee2615e092067cdecc29adf0c2ed0703dae9acda8fa0a672"

  url "https://github.com/MacDownApp/macdown/releases/download/v#{version}/MacDown.app.zip",
      verified: "github.com/MacDownApp/macdown/"
  name "MacDown"
  desc "Open-source Markdown editor"
  homepage "https://macdown.uranusjr.com/"

  livecheck do
    url "https://macdown.uranusjr.com/sparkle/macdown/stable/appcast.xml"
    strategy :sparkle do |item|
      # 0.7.3 has a known issue, so wait for the next version.
      # See https://github.com/MacDownApp/macdown/issues/1173.
      next version if item.short_version == "0.7.3"

      item.short_version
    end
  end

  auto_updates true

  app "MacDown.app"
  binary "#{appdir}/MacDown.app/Contents/SharedSupport/bin/macdown"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.uranusjr.macdown.sfl*",
    "~/Library/Application Support/MacDown",
    "~/Library/Caches/com.uranusjr.macdown",
    "~/Library/Cookies/com.uranusjr.macdown.binarycookies",
    "~/Library/Preferences/com.uranusjr.macdown.plist",
    "~/Library/Saved Application State/com.uranusjr.macdown.savedState",
    "~/Library/WebKit/com.uranusjr.macdown",
  ]

  caveats do
    requires_rosetta
  end
end
