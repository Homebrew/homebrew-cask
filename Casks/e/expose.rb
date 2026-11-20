cask "expose" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "4.6.0"
  sha256 arm:          "b45b5d492486e6401fa2df6130dfe127316d9cfe85021c5919cefc68a5595f72",
         intel:        "195fe9746528a5a7a608946f4183e23383f1499013b9ee5c5a5a85e5df39ef63",
         arm64_linux:  "62124348deecf10783c8c4b163cb724f967e80223d40ef74c39ed041d8ae7193",
         x86_64_linux: "68f0117578d31ac532e0f7e677fdd93afa39de6b7d36bcde8b0ecb77b6fd8e5f"

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
