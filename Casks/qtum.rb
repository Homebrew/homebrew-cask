cask "qtum" do
  version "0.20.3"
  sha256 "f59f3666902d0840d5687746ca1336f943deda3bca0de4e08b2e611ef21a26f6"

  url "https://github.com/qtumproject/qtum/releases/download/mainnet-fastlane-v#{version}/qtum-#{version}-osx-unsigned.dmg",
      verified: "github.com/qtumproject/qtum/"
  name "Qtum"
  desc "Cryptocurrency wallet"
  homepage "https://qtum.org/"

  livecheck do
    url :url
    strategy :github_latest
    regex(%r{href=.*?/qtum-(\d+(?:\.\d+)*)-osx-unsigned\.dmg}i)
  end

  app "Qtum-Qt.app"
end
