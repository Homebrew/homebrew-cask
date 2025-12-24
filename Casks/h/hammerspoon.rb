cask "hammerspoon" do
  version "1.1.0"
  sha256 "39ef907b7984f6cd38778d5bee3772abac8be6b48aa46a1ff5d7adccd41e73b5"

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
  depends_on macos: ">= :ventura"

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
