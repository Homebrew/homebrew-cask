cask "hammerspoon" do
  version "1.0.0"
  sha256 "5db702b55da47dc306e8f5948d91ef85bebd315ddfa29428322a0af7ed7e6a7e"

  url "https://github.com/Hammerspoon/hammerspoon/releases/download/#{version}/Hammerspoon-#{version}.zip",
      verified: "github.com/Hammerspoon/hammerspoon/"
  name "Hammerspoon"
  desc "Desktop automation application"
  homepage "https://www.hammerspoon.org/"

  livecheck do
    url "https://raw.githubusercontent.com/Hammerspoon/hammerspoon/master/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true

  app "Hammerspoon.app"
  binary "#{appdir}/Hammerspoon.app/Contents/Frameworks/hs/hs"

  uninstall quit: "org.hammerspoon.Hammerspoon"

  zap trash: [
    "~/.hammerspoon",
    "~/Library/Application Support/com.crashlytics/org.hammerspoon.Hammerspoon",
    "~/Library/Caches/org.hammerspoon.Hammerspoon",
    "~/Library/Preferences/org.hammerspoon.Hammerspoon.plist",
    "~/Library/Saved Application State/org.hammerspoon.Hammerspoon.savedState",
  ]
end
