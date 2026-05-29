cask "akuity" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.30.0-rl.2.0.20260529075301-12b5fa3d085c"
  sha256 arm:          "5fb8fdbe85dd2a168cec0acbe547857ec2d33de3d78662086aa52aaef30faaa6",
         intel:        "3cadf27ae5120f3bab43fed0a0563212a1b0251fe70810f92ac9bbb8b7f8d09a",
         arm64_linux:  "97d63e60de0a046632c9945184a7d2b51c83589c5c80c588a8d03e99a72f434f",
         x86_64_linux: "f721b9c700a1523b3a4deffb89d666a6af485b3aa2f28722459a1810a7d72f35"

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
