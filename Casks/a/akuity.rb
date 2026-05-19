cask "akuity" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.30.0-rl.2.0.20260515175203-2c01b8798c75"
  sha256 arm:          "5fd38ab71c3d0ee83b1db2e36a77c0de4ec03339a092d8a009db31f38c576948",
         intel:        "e17e5177e8e5d55ff390288d674d845508c1e7e06ee84e9430178d12db1bc706",
         arm64_linux:  "4378c7d0e0e883964d46d869971119ff6bf74a2f66540fe38bfc8198c65737ae",
         x86_64_linux: "53f1c323726a294a53ac61697974b33c236c4759a79fbc269ba2f65c17df8a6c"

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
