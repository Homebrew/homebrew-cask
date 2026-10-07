cask "akuity" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.33.0-rl.8.0.20261007013338-a3c352b45c0e"
  sha256 arm:          "31b2d87766d05eec49762d23e76dca75527f53cee1ba2b7e613615d97137c71e",
         intel:        "55418a152d38add0af8239a00df017656123fd7b32ac7b941eaa939afc8dd474",
         arm64_linux:  "d948c0cfb6dd00cafd260ce72dc3acb37f9be87b810eb7aac14f6158030e7e88",
         x86_64_linux: "558df156137bc685edc11ae772d27bb4551c900d3973ceb767fb90a7c6abd179"

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
