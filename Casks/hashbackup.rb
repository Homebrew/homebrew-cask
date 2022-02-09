cask "hashbackup" do
  version "2677"
  sha256 "6082314b56598497878712e63968d612320536bfd754451c7f431a62e379cf88"

  url "http://upgrade.hashbackup.com/#{version}/hb.r#{version}.Darwin.x86_64.bz2"
  name "hashbackup"
  desc "Command-line backup program"
  homepage "https://www.hashbackup.com/"

  livecheck do
    url "http://www.hashbackup.com/changelog"
    regex(/>\s*#(\d+)\s+[a-z]+\s*\d{1,2},\s*\d{4}/i)
  end

  binary "hb.r#{version}.Darwin.x86_64", target: "hb"
end
