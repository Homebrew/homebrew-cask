cask "boring-notch" do
  version "2.3"
  sha256 :no_check

  url "https://github.com/TheBoredTeam/boring.notch/releases/download/glowing-panda/GlowingPanda.dmg"
  name "boring-notch"
  desc "Not so boring notch That Rocks"
  homepage "https://github.com/TheBoredTeam/boring.notch"

  livecheck do
    url "https://TheBoredTeam.github.io/boring.notch/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "boringNotch.app"

  # No zap stanza required
end
