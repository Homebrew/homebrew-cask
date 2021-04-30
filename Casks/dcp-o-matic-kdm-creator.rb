cask "dcp-o-matic-kdm-creator" do
  version "2.14.47"
  sha256 "be0527053c026aad80779b44f3fbb87669b70828628dc64b940ed8322f07264e"

  url "https://dcpomatic.com/dl.php?id=osx-10.9-kdm&version=#{version}"
  appcast "https://dcpomatic.com/download"
  name "DCP-o-matic KDM Creator"
  homepage "https://dcpomatic.com/"

  app "DCP-o-matic #{version.major} KDM Creator.app"
end
