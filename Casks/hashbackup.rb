cask "hashbackup" do
  version "3068"
  sha256 "c7eb5b117b7083d7c0e4b74c4aeae1922963d5243748d08883b54139ef5dd2e5"

  url "http://upgrade.hashbackup.com/#{version}/hb.r#{version}.Darwin.x86_64.bz2"
  name "HashBackup"
  desc "Command-line backup program"
  homepage "https://www.hashbackup.com/hashbackup/index.html"

  livecheck do
    url "https://www.hashbackup.com/hashbackup/releases.html"
    regex(/>\s*#(\d+)\s+[a-z]+\s*\d{1,2},\s*\d{4}\s*</i)
  end

  binary "hb.r#{version}.Darwin.x86_64", target: "hb"

  zap trash: "~/hashbackup"
end
