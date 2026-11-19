cask "akuity" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.34.0-rl.1.0.20261119035502-0f2dc9d08785"
  sha256 arm:          "b857d34139ef9fad7b86661f0d36525e276aa84e5661fb3d3131b6610aa81c8e",
         intel:        "f51c01a145b390549c3a71443d76c3eb0ce93aabf0f200ff03a12fc1d9d79cca",
         arm64_linux:  "af9635980d4634327ee1b8d759d5961b817803eedd40c01d5c9e93bc76928952",
         x86_64_linux: "b42ea470cf75249deb7525b375e9e050d55090929d1e089c73bcfd661c90f927"

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
