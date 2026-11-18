cask "expose" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "4.5.0"
  sha256 arm:          "96205ce60ccb00f064d6ea4352f7af5860130d5b382d36ce2e453e35547869df",
         intel:        "c9932d0cb0c34bfefef6415ad1fa362e204337931a1d93e7eb28e2037268295d",
         arm64_linux:  "6959afc6090877ac9ba230715ddd8c27e77d8ee32ba5fe5da149d3279450c3de",
         x86_64_linux: "a3f2f4b6a498974c7306c382d2dc11650b99922db83f32898de47110cdc338c5"

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
