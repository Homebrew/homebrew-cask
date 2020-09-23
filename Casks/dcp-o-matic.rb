cask "dcp-o-matic" do
  version "2.14.38"
  sha256 "528dd2ecbd4da8c1c8570c0bef3d1f549ea772aa11eda7f9b7d97986430d06ac"

  url "https://dcpomatic.com/dl.php?id=osx-10.9-main&version=#{version}"
  appcast "https://dcpomatic.com/download"
  name "DCP-o-matic"
  homepage "https://dcpomatic.com/"

  app "DCP-o-matic #{version.major}.app"
end
