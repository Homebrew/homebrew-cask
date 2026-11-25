cask "dmenu-mac" do
  version "0.9.0"
  sha256 "5dea2941858de1ee7f37d45e86ae4ed2a0bb017a526126fa12a69e8f925d8547"

  url "https://github.com/oNaiPs/dmenu-mac/releases/download/#{version}/dmenu-mac.zip"
  name "dmenu-mac"
  desc "Keyboard-only application launcher"
  homepage "https://github.com/oNaiPs/dmenu-mac"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :ventura

  app "dmenu-mac.app"
  binary "#{appdir}/dmenu-mac.app/Contents/Resources/dmenu-mac"

  zap trash: [
    "~/Library/Application Scripts/com.onaips.dmenu-macos",
    "~/Library/Containers/com.onaips.dmenu-macos",
    "~/Library/Preferences/com.onaips.dmenu-macos.plist",
  ]
end
