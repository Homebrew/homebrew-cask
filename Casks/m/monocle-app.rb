cask "monocle-app" do
  version "3.5"
  sha256 "cdc34f0d2843a9fca79f1f4a4351930db937144868560c77910bc8588552bcd8"

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
