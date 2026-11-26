cask "ladybird" do
  version "2026.48.0"
  sha256 "407188599f475bb468360fe52a2720c5b24ec9b3e358f7c17d41347f504bacb6"

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
