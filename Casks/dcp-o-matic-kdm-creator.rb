cask "dcp-o-matic-kdm-creator" do
  version "2.14.56"
  sha256 "1625235dd8801a5a41b60f09cb156972997a247c99b1ba46d298421b6a8e8c9f"

  url "https://dcpomatic.com/dl.php?id=osx-10.9-kdm&version=#{version}"
  name "DCP-o-matic KDM Creator"
  desc "Convert video, audio and subtitles into DCP (Digital Cinema Democratized)"
  homepage "https://dcpomatic.com/"

  livecheck do
    url "https://dcpomatic.com/download"
    strategy :page_match
    regex(/stable\s*release:\s*(\d+(?:\.\d+)+)/i)
  end

  app "DCP-o-matic #{version.major} KDM Creator.app"
end
