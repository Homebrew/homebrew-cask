cask "akuity" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.31.0-rl.5.0.20260707035152-846abc11fae4"
  sha256 arm:          "630b5ccd85b1b021212e5051f92d92af68e931e0e7dc56a18565b6f69bc4322d",
         intel:        "74a691b481a87423b80cb9a563f855cf404834a8163940465b9f41261e9d2d44",
         arm64_linux:  "088a90c3e7805db4ffa86d9d847eb468e0cf42e3ce0d62eb4060d4d989ba2d13",
         x86_64_linux: "b0b6acf6f015602fc84cedf7427a9424541e3995234018ce923de7afd85e5572"

  url "https://dl.akuity.io/akuity-cli/v#{version}/#{os}/#{arch}/akuity"
  name "Akuity"
  desc "Management tool for the Akuity Platform"
  homepage "https://akuity.io/"

  livecheck do
    url "https://dl.akuity.io/akuity-cli/stable.txt"
    regex(/^v?(\d+(?:\.\d+)+.*)$/i)
  end

  binary "akuity"

  zap trash: "~/.config/akuity"
end
