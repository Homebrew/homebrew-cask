cask "purei-play" do
  version "2023-06-27,e634f31e"
  sha256 "db1d2f710df8dabd7b19d99432c63b8f762c0048a1fb268569015ae341f1ee11"

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
