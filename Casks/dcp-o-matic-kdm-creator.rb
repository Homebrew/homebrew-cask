cask "dcp-o-matic-kdm-creator" do
  version "2.14.41"
  sha256 "126a2ed0566540900d944dcbd20c3cd0c13b7bcfba4fcaa24a2773ec35f798f2"

  url "https://dcpomatic.com/dl.php?id=osx-10.9-kdm&version=#{version}"
  appcast "https://dcpomatic.com/download"
  name "DCP-o-matic KDM Creator"
  homepage "https://dcpomatic.com/"

  app "DCP-o-matic #{version.major} KDM Creator.app"
end
