cask "akuity" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.32.0-rl.1.0.20260803145620-cf7c93c36e32"
  sha256 arm:          "88208b71aea2c6f4b9ad8f33a0ece17b2a5d21ab8d6f4aacdadeda7335e68800",
         intel:        "8854e4afdd8a6044d3faad1124386892051acab1d528ffa315474852775c40df",
         arm64_linux:  "7b255e078001f435ca367ed92870919774f5ed62d20cd06c63a235596d4d3191",
         x86_64_linux: "5cd4e7999388a03fbc98aa202063e857546ef7346062394d1f353d11f3a2daa2"

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
