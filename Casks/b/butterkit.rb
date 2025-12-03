cask "butterkit" do
  version "1.4.02"
  sha256 "7bc87ce4790425fec5f7810dad4fdc668dd253c3bbda244647daba37ee8c8023"

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
