cask "purei-play" do
  version "2024-08-09,2673683c"
  sha256 "32c9b538bc7fcc6a0a6d4f07047d7c58c2c1fd652b31915b1227230723eca0d0"

  url "https://playbuilds.s3.amazonaws.com/#{version.csv.second}/Play.dmg",
      verified: "playbuilds.s3.amazonaws.com/"
  name "Play!"
  desc "PlayStation 2 emulator"
  homepage "https://purei.org/"

  livecheck do
    url "https://services.purei.org/api/builds"
    strategy :json do |json|
      "#{json["commitDate"][/^(\d+(?:-\d+)+)T/i, 1]},#{json["commitHash"]}"
    end
  end

  depends_on macos: ">= :catalina"

  app "Play.app"

  zap trash: [
    "~/Library/Preferences/com.virtualapplications.Play.plist",
    "~/Library/Saved Application State/com.virtualapplications.Play.savedState",
  ]
end
