cask "sketch@beta" do
  version "2026.3.1,233996"
  sha256 "235165fbafe58a4aeb6b6941cb77b451384d0b45c0bb20f53f0ca6fb820226eb"

  url "https://beta-download.sketch.com/sketch-#{version.csv.first}-#{version.csv.second}.zip"
  name "Sketch"
  desc "Digital design and prototyping platform"
  homepage "https://www.sketch.com/beta"

  livecheck do
    url "https://beta-download.sketch.com/sketch-versions.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :sequoia

  app "Sketch Beta.app"

  uninstall quit: "com.bohemiancoding.sketch3.beta"

  zap trash: [
    "~/Library/Application Support/bugsnag-shared-com.bohemiancoding.sketch3.beta",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.bohemiancoding.sketch3.beta.sfl*",
    "~/Library/Application Support/com.bohemiancoding.sketch3.beta",
    "~/Library/Application Support/Sketch Beta",
    "~/Library/Caches/bugsnag-shared-com.bohemiancoding.sketch3.beta",
    "~/Library/Caches/com.bohemiancoding.sketch3.beta",
    "~/Library/Caches/com.plausiblelabs.crashreporter.data/com.bohemiancoding.sketch3.beta",
    "~/Library/Cookies/com.bohemiancoding.sketch3.beta.binarycookies",
    "~/Library/HTTPStorages/com.bohemiancoding.sketch3.beta",
    "~/Library/Logs/com.bohemiancoding.sketch3.beta",
    "~/Library/Preferences/com.bohemiancoding.sketch3.beta.LSSharedFileList.plist",
    "~/Library/Preferences/com.bohemiancoding.sketch3.beta.plist",
  ]
end
