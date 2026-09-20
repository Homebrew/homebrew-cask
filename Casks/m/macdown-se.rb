cask "macdown-se" do
  version "1.0.0"
  sha256 "3022fd60d2a6ab78e33a2bdad90e9b788854abd3a97e4eb2acd25cb9b7d5f896"

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
    "~/Library/Preferences/io.eldris.macdown-se.plist",
    "~/Library/Saved Application State/io.eldris.macdown-se.savedState",
  ]
end
