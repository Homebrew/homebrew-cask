cask "purei-play" do
  version "2023-12-01,58fcc919"
  sha256 "d0ee3b6a7780125e80c00be9dda8d3b5d9949a373b92b6a3b9310a134d751d91"

  url "https://s3.us-east-2.amazonaws.com/playbuilds/#{version.csv.second}/Play.dmg",
      verified: "s3.us-east-2.amazonaws.com/playbuilds/"
  name "Play!"
  desc "PlayStation 2 emulator"
  homepage "https://purei.org/"

  livecheck do
    url "https://services.purei.org/api/builds"
    strategy :json do |json|
      "#{json["commitDate"][/^(\d+(?:-\d+)+)T/i, 1]},#{json["commitHash"]}"
    end
  end

  app "Play.app"

  zap trash: [
    "~/Library/Preferences/com.virtualapplications.Play.plist",
    "~/Library/Saved Application State/com.virtualapplications.Play.savedState",
  ]
end
