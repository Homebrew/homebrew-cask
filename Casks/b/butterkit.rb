cask "butterkit" do
  version "1.9.20"
  sha256 "0c2d16a9a25811b5ce3c91bbd5bf8a3a0b44ab5e7c689f154bded988a4e1d6d5"

  url "https://download.butterkit.app/updates/ButterKit-Direct-#{version}-macOS.zip"
  name "ButterKit"
  desc "App Store screenshots editor"
  homepage "https://butterkit.app/"

  livecheck do
    url "https://butterkit.app/updates/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :sequoia

  app "ButterKit-Direct-#{version}-macOS.app", target: "ButterKit.app"

  zap trash: [
    "~/Library/Application Scripts/app.butterkit.direct",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/app.butterkit.direct.sfl*",
    "~/Library/Caches/app.butterkit.direct",
    "~/Library/Containers/app.butterkit.direct",
  ]
end
