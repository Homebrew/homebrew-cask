cask "dcp-o-matic" do
  version "2.14.46"
  sha256 "fa1b0d8634d34d2e24624ea67ed739f1375cd7a4306b8637aac5eda9f082fa9c"

  url "https://dcpomatic.com/dl.php?id=osx-10.9-main&version=#{version}"
  appcast "https://dcpomatic.com/download"
  name "DCP-o-matic"
  homepage "https://dcpomatic.com/"

  app "DCP-o-matic #{version.major}.app"
end
