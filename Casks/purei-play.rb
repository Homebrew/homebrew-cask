cask "purei-play" do
  version "2021-06-11,475de030"
  sha256 "4d67383355763da058495bffe93c653251b05c76ce1de5b1bc37e6fbe5432064"

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
