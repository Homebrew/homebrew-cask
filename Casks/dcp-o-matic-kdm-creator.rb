cask "dcp-o-matic-kdm-creator" do
  version "2.14.36"
  sha256 "3882c367ccf486ede1a9f6cf8f1723d4982f29be8a51c6ffefd0d4fe7884db11"

  url "https://dcpomatic.com/dl.php?id=osx-10.9-kdm&version=#{version}"
  appcast "https://dcpomatic.com/download"
  name "DCP-o-matic KDM Creator"
  homepage "https://dcpomatic.com/"

  app "DCP-o-matic #{version.major} KDM Creator.app"
end
