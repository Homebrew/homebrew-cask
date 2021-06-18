cask "hashbackup" do
  version "2546"
  sha256 "ca962bcbbddda07c944de1b4f4ca9ead2e1550fe341d8e1da2c07d0066803b28"

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
