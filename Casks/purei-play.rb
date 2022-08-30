cask "purei-play" do
  version "2022-08-29,7b2a6ccc"
  sha256 "e0fadce796b7ba2ff2d488049a1d687f92639e2a6528b9a89055ff6f3ee48629"

  url "https://s3.us-east-2.amazonaws.com/playbuilds/#{version.csv.second}/Play.dmg",
      verified: "https://s3.us-east-2.amazonaws.com/playbuilds/"
  name "Play!"
  desc "PlayStation 2 emulator"
  homepage "https://purei.org/"

  livecheck do
    url "https://services.purei.org/api/builds"
    strategy :page_match do |page|
      build = JSON.parse(page)
      "#{build["commitDate"][/^(\d+(?:-\d+)+)T/i, 1]},#{build["commitHash"]}"
    end
  end

  app "Play.app"

  zap trash: [
    "~/Library/Preferences/com.virtualapplications.Play.plist",
    "~/Library/Saved Application State/com.virtualapplications.Play.savedState",
  ]
end
