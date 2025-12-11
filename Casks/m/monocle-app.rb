cask "monocle-app" do
  version "3.0"
  sha256 "e59aa913ba935a3da975af3901d13257ae37f7ab17f80ef2bb1a40570970a047"

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
