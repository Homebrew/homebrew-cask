cask "hashbackup" do
  version "3287"
  sha256 :no_check

  url "https://www.hashbackup.com/download/hb-mac-64bit.tar.gz"
  name "HashBackup"
  desc "Command-line backup program"
  homepage "https://www.hashbackup.com/hashbackup/index.html"

  livecheck do
    url "http://upgrade.hashbackup.com/release/latest.txt"
    regex(/^(\d+)$/i)
  end

  binary "hb"

  zap trash: "~/hashbackup"

  caveats do
    requires_rosetta
  end
end
