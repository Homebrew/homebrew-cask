cask "purei-play" do
  version "2022-05-11,4db18f9e"
  sha256 "c7dad84cfd9b383c4c63897fd9f20b80a1c4e652d2bc83dc6ba37e3d160780d0"

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
