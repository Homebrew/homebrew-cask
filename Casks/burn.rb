cask "burn" do
  version "3.0.5"
  sha256 "82019cb2f99adb649b7ff38aa2036352c41016e934f542a1781975fbddbf992a"

  url "https://downloads.sourceforge.net/burn-osx/Burn/#{version}/Burn-#{version}.zip",
      verified: "downloads.sourceforge.net/burn-osx/"
  appcast "https://sourceforge.net/projects/burn-osx/rss?path=/Burn"
  name "Burn"
  desc "CD burning application"
  homepage "https://burn-osx.sourceforge.io/"

  app "Burn.localized/Burn.app"
end
