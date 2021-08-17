cask "hashbackup" do
  version "2552"
  sha256 "ee1b974e588d372155994a14471da576b30e67ab2d5d58312762dea0a60dc0f4"

  url "http://upgrade.hashbackup.com/#{version}/hb.r#{version}.Darwin.x86_64.bz2"
  name "hashbackup"
  desc "Command-line backup program"
  homepage "http://www.hashbackup.com/"

  livecheck do
    url "http://www.hashbackup.com/changelog"
    regex(/>\s*#(\d+)\s+[a-z]+\s*\d{1,2},\s*\d{4}/i)
  end

  binary "hb.r#{version}.Darwin.x86_64", target: "hb"
end
