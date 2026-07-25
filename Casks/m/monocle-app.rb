cask "monocle-app" do
  version "3.5.1"
  sha256 "6c80a580d1b2e16fd956212efc71fc7e78adf10071b5cd53d3d29103fbbfb439"

  url "https://files.heyiam.dk/updates/monocle/Monocle-#{version.dots_to_hyphens}.zip"
  name "Monocle"
  desc "Window dimming utility"
  homepage "https://www.heyiam.dk/monocle/"

  livecheck do
    url "https://files.heyiam.dk/updates/monocle/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Monocle.app"

  zap trash: [
    "~/Library/Application Support/dk.heyiam.monocle",
    "~/Library/Group Containers/com.monocle.settings",
    "~/Library/Preferences/dk.heyiam.monocle.plist",
  ]
end
