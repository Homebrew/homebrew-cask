cask "macdown-se" do
  version "1.0.0"
  sha256 "81849c62f42745ff520adaa303e0dafa383ee6a3ea7c285cd24080bedacb0631"

  url "https://github.com/eldris-io/macdown-se/releases/download/v#{version}/MacDown-SE-#{version}.dmg"
  name "MacDown SE"
  desc "Open-source Markdown editor for Apple Silicon"
  homepage "https://github.com/eldris-io/macdown-se"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  conflicts_with cask: "macdown"
  depends_on arch: :arm64
  depends_on macos: :monterey

  app "MacDown SE.app"
  binary "#{appdir}/MacDown SE.app/Contents/SharedSupport/bin/macdown-se"
  binary "#{appdir}/MacDown SE.app/Contents/SharedSupport/bin/macdown"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/io.eldris.macdown-se.sfl*",
    "~/Library/Application Support/MacDown SE",
    "~/Library/Caches/io.eldris.macdown-se",
    "~/Library/HTTPStorages/io.eldris.macdown-se",
    "~/Library/Preferences/io.eldris.macdown-se.plist",
    "~/Library/Saved Application State/io.eldris.macdown-se.savedState",
  ]
end
