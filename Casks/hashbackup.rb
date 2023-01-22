cask "hashbackup" do
  version "3058"
  sha256 "5d87854ca40d6b795751932d705e069e6262181320a60af4c9daa8c418a01dd1"

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
