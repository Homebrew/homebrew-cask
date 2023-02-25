cask "purei-play" do
  version "2023-02-14,96cad125"
  sha256 "2b173322edb37f999af82875127e1f8a609da6be4b97f759a48fabdd76169a93"

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
