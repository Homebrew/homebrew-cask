cask "kite" do
  version "0.20201113.0"
  sha256 "92a2267f841d596b84c267470c9ea068dcba52aa919f9c322e26dedd92903fcb"

  # draqv87tt43s0.cloudfront.net/ was verified as official when first introduced to the cask
  url "https://draqv87tt43s0.cloudfront.net/mac/#{version}/Kite.dmg"
  appcast "https://release.kite.com/appcast.xml"
  name "Kite"
  homepage "https://kite.com/"

  auto_updates true

  app "Kite.app"
end
