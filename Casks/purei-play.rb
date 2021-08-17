cask "purei-play" do
  version "2021-08-10,3555a138"
  sha256 "b0f537cec288270a3c2f0b63c96b6ef4681fd7a2c7591291dbb8708ee5617806"

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
