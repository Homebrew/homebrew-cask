cask "playcover" do
  if MacOS.version <= :big_sur
    version "0.9.2"
    sha256 "cbcc51a37079219d171ac7eb41eb51c7469192628db5db2359670ee25831d87a"
    url "https://github.com/iVoider/PlayCover/releases/download/#{version}/PlayCover.#{version}.zip",
        verified: "github.com/iVoider/PlayCover/"

    livecheck do
      skip "Last supported version for Big Sur"
    end

    app "PlayCover #{version}/PlayCover.app"
  else
    version "1.0.0"
    sha256 "3b04ebec69d5a49d711f1f3b212cf5805708f7a5f9ef9d3b469007eae62d978c"
    url "https://github.com/iVoider/PlayCover/releases/download/#{version}/PlayCover.#{version}.dmg",
        verified: "github.com/iVoider/PlayCover/"

    app "PlayCover.app"
  end

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
