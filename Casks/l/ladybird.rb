cask "ladybird" do
  version "2026.47.7"
  sha256 "d3647babc442aca475354b19158045cd5b5f40f4be92fe55762be8eb90727ed8"

  url "https://download.ladybird.org/macos/#{version}/ladybird-#{version}-macOS-arm64.dmg"
  name "Ladybird"
  desc "Web browser"
  homepage "https://ladybird.org/"

  livecheck do
    url "https://download.ladybird.org/macos/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Ladybird.app"

  uninstall quit: "org.ladybird.Ladybird"

  zap trash: [
    "~/Library/Application Support/Ladybird",
    "~/Library/Caches/Ladybird",
    "~/Library/Preferences/Ladybird",
    "~/Library/Preferences/org.ladybird.Ladybird.plist",
  ]
end
