cask "akuity" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.33.0-rl.1.0.20260911045830-9396bd66b0ba"
  sha256 arm:          "1166e7ce8de2bd96278a0ca12b4a9a05fd5b178a4a05c16728919f53f7139761",
         intel:        "1864bb8f337f8d6cdbc71d935dba8aea294c61d4f36ffa5249299c85befd68bb",
         arm64_linux:  "75e717169c58580e8c86e15149f47941e9106fb3c5b881063a61b1c43b296da1",
         x86_64_linux: "051ff6c7717999433ce097881d3f9614eef4825d01bc39f7ab9a5282b81047d2"

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
