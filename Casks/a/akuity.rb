cask "akuity" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.31.0-rl.2.0.20260622153007-d63f336f4bae"
  sha256 arm:          "0d3cc59889c121c49cf685652e63e0b4a9f132bfd0a6ae20aa8a7f5395e42390",
         intel:        "89c149900fa2b21105aa54d1455e6a2e3faa35d9a97b5ed0508652fea1520bf5",
         arm64_linux:  "acfd9138aa17927ad246d1d2e95e943a29ec3f3d62c91ed4a04982a7742bfa2a",
         x86_64_linux: "831736745a6c569091c6090c8f64ba6669e7fa9ae7d363d6b8bebc704240d340"

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
