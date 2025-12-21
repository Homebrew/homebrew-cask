cask "monocle-app" do
  version "3.0.1"
  sha256 "c490705d10c27ff4d917928a224d36c1ba68da3b1a78f0d871432b08bf41acc0"

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
