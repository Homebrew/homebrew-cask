cask "purei-play" do
  version "2021-07-16,aa658be6"
  sha256 "da766a568a727e066c1ee34e3a4580da5eb9083475a892a879a0b0c4965de64c"

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
