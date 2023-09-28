cask "rocket-typist" do
  version "2.4.4"
  sha256 :no_check

  url "https://witt-software.com/downloads/rockettypist/Rocket%20Typist.dmg"
  name "Rocket Typist"
  desc "Text expander for common phrases"
  homepage "https://witt-software.com/rockettypist/"

  livecheck do
    url "https://witt-software.com/downloads/rockettypist/appcast.xml"
    strategy :sparkle, &:short_version
  end

  depends_on macos: ">= :ventura"

  auto_updates true
  
  app "Rocket Typist.app"

  zap trash: [
    "~/Library/Application Support/com.witt-software.Rocket-Typist-#{version.major}",
    "~/Library/Application Support/com.witt-software.rocket-typist",
    "~/Library/Application Support/Rocket Typist",
    "~/Library/Caches/com.apple.helpd/Generated/com.witt-software.Rocket-Typist.help*",
    "~/Library/Caches/com.plausiblelabs.crashreporter.data/com.witt-software.Rocket-Typist-#{version.major}",
    "~/Library/Caches/com.witt-software.Rocket-Typist-#{version.major}",
    "~/Library/HTTPStorages/com.witt-software.Rocket-Typist-#{version.major}",
    "~/Library/Preferences/com.witt-software.Rocket-Typist-#{version.major}.plist",
  ]
end
