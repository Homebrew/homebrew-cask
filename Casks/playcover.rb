cask "playcover" do
  version "0.7.8"
  sha256 "6aa097bd391e489b101a775b972cc1c9ca52eb04ec0c550e470c328f6094269d"

  url "https://github.com/iVoider/PlayCover/releases/download/#{version}/PlayCover.#{version}.zip",
      verified: "github.com/iVoider/PlayCover/"
  name "PlayCover"
  desc "Run iOS apps & games on M1 Mac with mouse, keyboard and controller support."
  homepage "https://www.playcover.me/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "#{version}r3/PlayCover.app"

  zap trash: [
      "~/Library/Application Support/me.playcover.PlayCover",
      "~/Library/Caches/me.playcover.PlayCover",
      "~/Library/Containers/me.playcover.PlayCover",
      "~/Library/Preferences/me.playcover.PlayCover.plist",
      "~/Library/Saved Application State/me.playcover.PlayCover.savedState",
  ]
end
