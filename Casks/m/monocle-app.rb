cask "monocle-app" do
  version "3.0.3"
  sha256 "a18b42ef927fe1d1cbc1521cc77c20222beabffb5c16e5240aba7363dc69cb21"

  url "https://files.heyiam.dk/updates/monocle/Monocle-#{version.dots_to_hyphens}.zip"
  name "Monocle"
  desc "Window dimming utility"
  homepage "https://monocle.heyiam.dk/"

  livecheck do
    url "https://files.heyiam.dk/updates/monocle/appcast.xml"
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
