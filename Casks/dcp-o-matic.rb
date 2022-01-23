cask "dcp-o-matic" do
  version "2.14.57"
  sha256 "ba9155b7d5abf71a4c589ab4c59d9d8b8b929261c2ede4168fca6de19163144e"

  url "https://dcpomatic.com/dl.php?id=osx-10.9-main&version=#{version}"
  name "DCP-o-matic"
  desc "Convert video, audio and subtitles into DCP (Digital Cinema Democratized)"
  homepage "https://dcpomatic.com/"

  livecheck do
    url "https://dcpomatic.com/download"
    regex(/stable\s*release:\s*(\d+(?:\.\d+)+)/i)
  end

  app "DCP-o-matic #{version.major}.app"
end
