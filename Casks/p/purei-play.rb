cask "purei-play" do
  version "2024-01-05,4f23d5a3"
  sha256 "6e60da06896f65446676d2b0092279461a47de7769df28a3a7b6c45d9620b898"

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
