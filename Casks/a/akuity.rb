cask "akuity" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.31.0-rl.5.0.20260723015108-a02a01bc15a4"
  sha256 arm:          "b44e1b045dc3476bfb0a3965b1c7080fb864f804961b0a9bb0022c67db73d5aa",
         intel:        "63338f3d737c23c655bb36cdfd034065a9c2932d6f5324e03d7e06c134bca481",
         arm64_linux:  "d5f28c4d1bc1f718becc40e453b30af547850572d024c56e369e1aa4dd097a81",
         x86_64_linux: "34a07c1c23f96aad060c9f81a1800b33203e25301bb15ae5e99069883f36156e"

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
