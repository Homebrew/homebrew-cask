cask "purei-play" do
  version "2024-07-22,aa1bc3ed"
  sha256 "358ee11347d89d2179d03bd5df12d1dd2782254e36092b130f2cfc2ff8fcbc56"

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
