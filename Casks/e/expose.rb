cask "expose" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "4.2.1"
  sha256 arm:          "4c94ab2165b0f53685dddfc44a948d575123f67d7e81df20f65d3b30bfd3af9f",
         intel:        "9ceca72724c851a16b8701ffc242590b45c4a9ca8fe0b9f8c9b2ed6f7df867a4",
         arm64_linux:  "a8d3eacd933d06258965178698f0629ffd596a6d8067668559d8dc0284b15d8e",
         x86_64_linux: "8b104797b4003448033d48bafd8bfb708f7853125424e1cdd4d0037aabdf83c0"

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
