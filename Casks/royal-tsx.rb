cask "royal-tsx" do
  version "4.3.6.1000"
  sha256 "9fd00742126a19acca5b93751c57236093639c7c77955af6375592dce4e44360"

  url "https://royaltsx-v4.royalapplications.com/updates/royaltsx_#{version}.dmg"
  name "Royal TSX"
  homepage "https://www.royalapplications.com/ts/mac/features"

  livecheck do
    url "https://royaltsx-v#{version.major}.royalapplications.com/updates_stable.php"
    strategy :sparkle
  end

  auto_updates true

  app "Royal TSX.app"
end
