cask "akuity" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.29.0-rc.1.0.20260416232631-08e4a1c956ed"
  sha256 arm:          "fc4f6b9976fbed5bb2f991e29cd8f28c55f49fa0f42788ecb82cfcf245cf90e8",
         intel:        "346d7e161dae6f118241bcb01e132e25b17103cb42d8a007979d6f505c5bd422",
         arm64_linux:  "9710fed3307330a3e40710f3c8ac737feb0b82045377e8917fd440aae05b5d4f",
         x86_64_linux: "62f177cb8ebc5ffeb906b25ceeebfa2b3766b77f4ed3a060e52ad6eeca4b7a10"

  url "https://dl.akuity.io/akuity-cli/v#{version}/#{os}/#{arch}/akuity"
  name "Akuity"
  desc "Management tool for the Akuity Platform"
  homepage "https://akuity.io/"

  livecheck do
    url "https://dl.akuity.io/akuity-cli/stable.txt"
    regex(/^v?(\d+(?:\.\d+)+(?:-rc(?:\.\d+)*)?(?:[._-]\d+(?:\.\d+)*)?(?:[_-]?\h+)?)$/i)
  end

  binary "akuity"

  zap trash: "~/.config/akuity"
end
