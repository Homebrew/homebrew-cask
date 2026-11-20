cask "rocket-typist" do
  version "3.4.2"
  sha256 :no_check

  url "https://witt-software.com/downloads/rockettypist/Rocket%20Typist.dmg"
  name "Rocket Typist"
  desc "Text expander for common phrases"
  homepage "https://witt-software.com/rockettypist/"

  livecheck do
    url "https://witt-software.com/downloads/rockettypist/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sequoia

  app "Rocket Typist.app"

  zap trash: [
    "~/Library/Application Scripts/com.witt-software.Rocket-Typist-2.Share-Text-With-Rocket-Typist",
    "~/Library/Application Support/com.witt-software.rocket-typist",
    "~/Library/Application Support/com.witt-software.Rocket-Typist-2",
    "~/Library/Application Support/Rocket Typist",
    "~/Library/Caches/com.apple.helpd/Generated/com.witt-software.Rocket-Typist.help*",
    "~/Library/Caches/com.plausiblelabs.crashreporter.data/com.witt-software.Rocket-Typist-2",
    "~/Library/Caches/com.witt-software.Rocket-Typist-2",
    "~/Library/Containers/com.witt-software.Rocket-Typist-2.Share-Text-With-Rocket-Typist",
    "~/Library/HTTPStorages/com.witt-software.Rocket-Typist-2*",
    "~/Library/Preferences/com.witt-software.Rocket-Typist-2.plist",
  ]
end
