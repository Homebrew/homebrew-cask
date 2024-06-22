cask "purei-play" do
  version "2024-06-21,77429c7a"
  sha256 "c2751459d60445d7103f37b70519c10d59626da231708bb3138cf2d742b6f528"

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

  app "Play.app"

  zap trash: [
    "~/Library/Preferences/com.virtualapplications.Play.plist",
    "~/Library/Saved Application State/com.virtualapplications.Play.savedState",
  ]
end
