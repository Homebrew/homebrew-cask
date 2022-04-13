cask "hashbackup" do
  version "2897"
  sha256 "b8ec03d48f8423ef37ebdfb01af9e59dfad09b7304435a87c764513d82e95dbb"

  url "http://upgrade.hashbackup.com/#{version}/hb.r#{version}.Darwin.x86_64.bz2"
  name "HashBackup"
  desc "Command-line backup program"
  homepage "https://www.hashbackup.com/hashbackup/index.html"

  livecheck do
    url "https://www.hashbackup.com/hashbackup/releases.html"
    regex(/>\s*#(\d+)\s+[a-z]+\s*\d{1,2},\s*\d{4}\s*</i)
  end

  binary "hb.r#{version}.Darwin.x86_64", target: "hb"
end
