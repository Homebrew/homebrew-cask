cask "dcp-o-matic-kdm-creator" do
  version "2.14.51"
  sha256 "5e93646ea8be33dfdf22a86dbc370436b209ed7f363724b74e15148ce1a79b48"

  url "https://dcpomatic.com/dl.php?id=osx-10.9-kdm&version=#{version}"
  appcast "https://dcpomatic.com/download"
  name "DCP-o-matic KDM Creator"
  homepage "https://dcpomatic.com/"

  app "DCP-o-matic #{version.major} KDM Creator.app"
end
