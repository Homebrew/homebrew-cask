cask "akuity" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.30.0-rl.2.0.20260514104802-719d0fecc362"
  sha256 arm:          "74ae2e57158ce5533795bf2e56a36ddfaad19a25247e432b83b445d3751ead10",
         intel:        "e3e7359348e7c13a8914a02e10c3c20b563eae14eff5875b4b480f59c68ee0a6",
         arm64_linux:  "d85ffaff4284972ce47873e6163aca736a1113f500f10ee94d02bd8572ed0aec",
         x86_64_linux: "78fdf35fb11f6eee9c0d5e98cd26ce76b68a63b9cb778a7d62895578d85649e7"

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
