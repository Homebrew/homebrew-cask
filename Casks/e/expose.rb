cask "expose" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "4.5.2"
  sha256 arm:          "cbe342a4f3e9a6d06ba549f1ccb9ad8643bb2b6a9c1bdeb744570c21d74ccd6c",
         intel:        "dfd5345671d6e57918d9c5e250299c03463389a422ca6916e59f4daa34702273",
         arm64_linux:  "aed785d602fcf856474f58261da4f9881b69587c8663b8563a6e47eb3a464cb4",
         x86_64_linux: "b831f748dfb82e86efe41f573f7fc6fd7a029cc09daeae2afff88d2adbf4b495"

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
