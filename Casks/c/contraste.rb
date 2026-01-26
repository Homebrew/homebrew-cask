cask "contraste" do
  version "1.0"
  sha256 "ab6ce81efcde8179f9fdf81baff46f90dae45bca580f8582d82c8d1e42aa2c4a"

  url "https://contrasteapp.com/contraste-#{version}.zip"
  name "Contraste"
  desc "Check accessibility of text against Web Content Accessibility Guidelines"
  homepage "https://contrasteapp.com/"

  livecheck do
    url "https://contrasteapp.com/updates/releases.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true

  app "Contraste.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.13bold.contraste.sfl*",
    "~/Library/HTTPStorages/com.13bold.Contraste",
    "~/Library/Preferences/com.13bold.contraste.plist",
  ]

  caveats do
    requires_rosetta
  end
end
