cask "0-ad" do
  version "0.0.23b-alpha"
  sha256 "5fae1331bb1778bf16e49460fb850270b6cd76bee6483078ff27582e71ab263f"

  # wildfiregames.com/ was verified as official when first introduced to the cask
  url "https://releases.wildfiregames.com/0ad-#{version}-osx64.dmg"
  appcast "https://play0ad.com/download/mac/"
  name "0 A.D."
  homepage "https://play0ad.com/"

  app "0 A.D.app"
end
