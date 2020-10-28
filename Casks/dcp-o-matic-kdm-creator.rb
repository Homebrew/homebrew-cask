cask "dcp-o-matic-kdm-creator" do
  version "2.14.40"
  sha256 "59d4931f57bf94b42d6acd760da5be0e37cd769193964035e478896eceb278ae"

  url "https://dcpomatic.com/dl.php?id=osx-10.9-kdm&version=#{version}"
  appcast "https://dcpomatic.com/download"
  name "DCP-o-matic KDM Creator"
  homepage "https://dcpomatic.com/"

  app "DCP-o-matic #{version.major} KDM Creator.app"
end
