cask "sketch@beta" do
  version "2026.3,233900"
  sha256 "c1a8fd441f26c30ff757c0311973c41efc489004bdae1c666616129067128f16"

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
