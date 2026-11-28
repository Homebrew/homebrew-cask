cask "akuity" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.34.0-rl.1.0.20261127210233-c82bb12e053d"
  sha256 arm:          "1341250cd0a0fc75e58051e2df637272be608f0a4c6ea9035875966aba208f24",
         intel:        "20607fbb1fb30084482df506bf2cba5e71290a512420dcff035023619d1c5f0d",
         arm64_linux:  "f40a6d2ddf19c912a85cb44186d83819e25f95a90aabea469afb0336c95849ea",
         x86_64_linux: "6550f67ad51098716dcbf1ccb36383778edac1c53e283600120bc66649b93e93"

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
