cask "purei-play" do
  version "2021-10-01,3bc60f47"
  sha256 "da7f46b64e058e2dee3b9ab25b7103d8d55527b03e15156ec0f23f303cc4fcb7"

  url "https://s3.us-east-2.amazonaws.com/playbuilds/#{version.after_comma}/Play.dmg",
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
end
