cask "monocle-app" do
  version "3.0.2"
  sha256 "0cfa3ba106e5733afe53519df43edc0293e7abfce2e73ce9686a06a618028a5e"

  url "https://heyiam.dk/updates/monocle/Monocle-#{version.dots_to_hyphens}.zip"
  name "Monocle"
  desc "Window dimming utility"
  homepage "https://monocle.heyiam.dk/"

  livecheck do
    url "https://heyiam.dk/updates/monocle/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "Monocle.app"

  zap trash: [
    "~/Library/Application Support/dk.heyiam.monocle",
    "~/Library/Group Containers/com.monocle.settings",
    "~/Library/Preferences/dk.heyiam.monocle.plist",
  ]
end
