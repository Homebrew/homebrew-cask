cask "hashbackup" do
  version "3067"
  sha256 "b8d4ab6fcdf022262eb755588854b87963fa2ec3a2fb4910172be1be81f873f0"

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
