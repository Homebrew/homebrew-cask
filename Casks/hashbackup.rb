cask "hashbackup" do
  version "2772"
  sha256 "19983bec93b953b97cf59e972b9f826a8ccbfd03856a89dd0f5a982d67ec0855"

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
