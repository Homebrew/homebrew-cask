cask "dmenu-mac" do
  version "0.8.0"
  sha256 "e922338acc509a35882026fb66f6b94679e588cd867fa4eb5729420b6c59a8b0"

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
