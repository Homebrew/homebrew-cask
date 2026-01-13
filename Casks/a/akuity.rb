cask "akuity" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.26.2-0.20260113080328-bd9739363802"
  sha256 arm:          "a6116edb93a0a4333f0338db9a012915520b0a9b8a6ede0f5ef1db18c2ffc91d",
         intel:        "2e87ca6225ef502493e0f9e94daa9dbd5ebad2ded5396e48a4e08b8aa68fe192",
         arm64_linux:  "9de1c191e26e2e08118185c9b7dde0087b812e9c7616cb16482b254fd2c0b9a0",
         x86_64_linux: "910bbbc7a2953038854059ec2af3e483bccecf7652188c86ddc4ff00e595b55d"

  url "https://dl.akuity.io/akuity-cli/v#{version}/#{os}/#{arch}/akuity"
  name "Akuity"
  desc "Management tool for the Akuity Platform"
  homepage "https://akuity.io/"

  livecheck do
    url "https://dl.akuity.io/akuity-cli/stable.txt"
    regex(/v?(\d+(?:\.\d+)+(?:[_-]\d+(?:\.\d+)*)?(?:[_-]\h+)?)/i)
  end

  binary "akuity"

  zap trash: "~/.config/akuity"
end
