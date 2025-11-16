cask "butterkit" do
  version "1.3.12"
  sha256 "39c05f1a6d7a0cef26d0a6c1da6db46d8cbc200f39d48afc790a593144210614"

  url "https://butterkit.app/updates/ButterKit-Direct-#{version}-macOS.zip"
  name "ButterKit"
  desc "App Store screenshots editor"
  homepage "https://butterkit.app/"

  livecheck do
    url "https://butterkit.app/updates/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :sequoia"

  app "ButterKit-Direct-#{version}-macOS.app", target: "ButterKit.app"

  zap trash: [
    "~/Library/Application Scripts/app.butterkit.direct",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/app.butterkit.direct.sfl*",
    "~/Library/Caches/app.butterkit.direct",
    "~/Library/Containers/app.butterkit.direct",
  ]
end
