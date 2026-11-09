cask "expose" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "4.3.0"
  sha256 arm:          "e26e29e036df21f696abbc03d5c10df3c6a8102867ca779546e63c0a8e7a8938",
         intel:        "d3cc43358e9052091a8c2d6d4207dabbf4af07471f5dee8c97cb13aebd389141",
         arm64_linux:  "2b5cbe883f1dfbfdfa3e3a3b5f8bf27aee0702abd27cf82242fb96546bd6705a",
         x86_64_linux: "7d5053c1865d00fda6cd93dbdf7218fa53c6306cc2b09181e80aa474727c56ef"

  url "https://assets.beyondco.de/expose/client/#{version}/expose_#{os}_#{arch}.tar.gz"
  name "Expose"
  desc "Tunnel for sharing local web services"
  homepage "https://expose.dev/"

  livecheck do
    url "https://assets.beyondco.de/expose/client/latest.json"
    strategy :json do |json|
      json["version"]
    end
  end

  auto_updates true

  binary "expose"

  zap trash: "~/.expose"
end
