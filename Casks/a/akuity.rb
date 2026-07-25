cask "akuity" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.31.0-rl.5.0.20260724232952-337073e3f9bb"
  sha256 arm:          "21852c7129f4e2219b09e691cddfb9a0ec4721c938192b76ae1d15cf93d0f913",
         intel:        "482e03429e41872d83926d66d986db4265a2181cd5728e203e1d061ac3e3e482",
         arm64_linux:  "0bcee3da9c4d4540403bf43b2600f9e002b41636a89f15b66a6ddf0ae334364c",
         x86_64_linux: "01d66a481854df2f5fda0a13b7f6432eadcb73a89a4207606fc43240a2ab134f"

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
