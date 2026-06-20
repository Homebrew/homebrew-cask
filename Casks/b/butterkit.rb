cask "butterkit" do
  version "2.0.05"
  sha256 "7bee947616f18292cc536aa3a0c31686e5b96cd0ae35d582e5d5f3eee9b9a879"

  url "https://download.butterkit.app/updates/ButterKit-Direct-#{version}-macOS.zip"
  name "ButterKit"
  desc "App Store screenshots editor"
  homepage "https://butterkit.app/"

  livecheck do
    url "https://butterkit.app/updates/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :tahoe

  app "ButterKit-Direct-#{version}-macOS.app", target: "ButterKit.app"

  zap trash: [
    "~/Library/Application Scripts/app.butterkit.direct",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/app.butterkit.direct.sfl*",
    "~/Library/Caches/app.butterkit.direct",
    "~/Library/Containers/app.butterkit.direct",
  ]
end
