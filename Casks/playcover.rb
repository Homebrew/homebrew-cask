cask "playcover" do
  if MacOS.version <= :big_sur
    version "0.9.2"
    sha256 "cbcc51a37079219d171ac7eb41eb51c7469192628db5db2359670ee25831d87a"

    livecheck do
      skip "Last supported version for Big Sur"
    end

    app "PlayCover #{version}/PlayCover.app"
  else
    version "0.9.63"
    sha256 "cb8a93c2a3d366804baf5f33937651a343832f6f4c75ccadaf3cd16e1658f5cc"

    container nested: "PlayCover #{version}.dmg"

    app "PlayCover.app"
  end

  url "https://github.com/iVoider/PlayCover/releases/download/#{version}/PlayCover.#{version}.zip",
      verified: "github.com/iVoider/PlayCover/"
  name "PlayCover"
  desc "Sideload iOS apps and games"
  homepage "https://www.playcover.me/"

  depends_on arch: :arm64

  zap trash: [
    "~/Library/Application Support/me.playcover.PlayCover",
    "~/Library/Caches/me.playcover.PlayCover",
    "~/Library/Containers/me.playcover.PlayCover",
    "~/Library/Preferences/me.playcover.PlayCover.plist",
    "~/Library/Saved Application State/me.playcover.PlayCover.savedState",
  ]
end
