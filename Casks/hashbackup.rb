cask "hashbackup" do
  version "2525"
  sha256 "6b84dcda7fb896cab26f76f6774da3257124a1475de5ee89ff8039a495c9382b"

  url "http://upgrade.hashbackup.com/#{version}/hb.r#{version}.Darwin.x86_64.bz2"
  name "hashbackup"
  homepage "http://www.hashbackup.com/"

  binary "hb.r#{version}.Darwin.x86_64", target: "hb"
end
