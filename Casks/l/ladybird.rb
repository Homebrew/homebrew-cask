cask "ladybird" do
  version "2026.47.8"
  sha256 "a7d9b83e900b1001a4acaf5926902a6d9a239c7c265e01ecefd250831c449b30"

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
