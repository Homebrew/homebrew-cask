cask "expose" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "4.4.0"
  sha256 arm:          "c4777be87e18598dd235e7b643f046737178765f1993186e9f46f36f2aab9ea6",
         intel:        "159d7b413f81ebdf662aa2c0a641bfad863daa30e7364cbc680e603ce37bdd5d",
         arm64_linux:  "523922424547289cdf58bde450e9e0e1c427d8cf274753f5653504b378cc5c2a",
         x86_64_linux: "0af4efc977dc1e86915d827026766a3d70731de676bee0d8a5e8903a57052d5c"

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
