cask "royal-tsx" do
  version "4.3.6.1000"
  sha256 "9fd00742126a19acca5b93751c57236093639c7c77955af6375592dce4e44360"

  url "https://royaltsx-v4.royalapps.com/updates/royaltsx_#{version}.dmg"
  name "Royal TSX"
  desc "Remote management solution"
  homepage "https://www.royalapps.com/ts/mac/features"

  livecheck do
    url "https://royaltsx-v#{version.major}.royalapps.com/updates_stable.php"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :sierra"

  app "Royal TSX.app"
end
