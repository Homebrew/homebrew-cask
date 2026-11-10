cask "expose" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "4.3.1"
  sha256 arm:          "56e61fe85956e16faf0605b4c78aebe4fd54e3601ccb3cc6344372e32f5f25b3",
         intel:        "2acc852d96cc2be48e15fd5a8132baefb4bc67816ef9549e3c89ea83b0a23c82",
         arm64_linux:  "a922c575d4e751a7c7b60b8e627da65a474f65f06a3c0505875cccbed4b1214c",
         x86_64_linux: "5ebc888490b070ffe29e735913ae65d3b8cdd9f573e0fe139acd00fa37ab2d3d"

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
