cask "purei-play" do
  version "2024-07-26,922caaad"
  sha256 "9a84ed6984c3c3da0fc58f1ffecca654dabe5e892a56259b1b517742af42a701"

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
