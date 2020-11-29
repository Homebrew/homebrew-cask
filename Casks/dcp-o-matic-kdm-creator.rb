cask "dcp-o-matic-kdm-creator" do
  version "2.14.46"
  sha256 "18292a52ceca3b1fd41f5bc6c3183e0bbcce941af8ffce2246f4d62a79e1f20b"

  url "https://dcpomatic.com/dl.php?id=osx-10.9-kdm&version=#{version}"
  appcast "https://dcpomatic.com/download"
  name "DCP-o-matic KDM Creator"
  homepage "https://dcpomatic.com/"

  app "DCP-o-matic #{version.major} KDM Creator.app"
end
