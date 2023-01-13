cask "clone-hero" do
  version "1.0.0.4080"
  sha256 "7b7d170b344773ce8355a0c3274e4adc1715e7cd978e210d3c701af22df00d5c"

  url "https://pubdl.clonehero.net/clonehero-v#{version}-final/clonehero-mac-universal.dmg"
  name "Clone Hero"
  desc "Guitar Hero clone"
  homepage "https://clonehero.net/"

  livecheck do
    url :homepage
    regex(%r{href=["']?/releases/v?(\d+(?:\.\d+)+)["' >]}i)
  end

  app "Clone Hero.app"

  zap trash: [
    "~/Library/Application Support/com.srylain.CloneHero",
    "~/Library/Preferences/com.srylain.CloneHero.plist",
  ]
end
