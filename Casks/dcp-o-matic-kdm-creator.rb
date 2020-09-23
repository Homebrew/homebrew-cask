cask "dcp-o-matic-kdm-creator" do
  version "2.14.38"
  sha256 "c7ac038a93380e8b3e8aad8fbb2dc23e832bbba3d72be535ea2d5f88b36f2d0e"

  url "https://dcpomatic.com/dl.php?id=osx-10.9-kdm&version=#{version}"
  appcast "https://dcpomatic.com/download"
  name "DCP-o-matic KDM Creator"
  homepage "https://dcpomatic.com/"

  app "DCP-o-matic #{version.major} KDM Creator.app"
end
