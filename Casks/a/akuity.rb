cask "akuity" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.29.0-rc.1.0.20260409223930-803c99ee3da9"
  sha256 arm:          "c8bc3d1277a4f48b5d5caf18e499b2b7d0a9de6e6e07027c1572e26ccb00144e",
         intel:        "e454297355cad48421b4ee18cf0fa5092fe9c8eef489a27d2dd0f2615403fa01",
         arm64_linux:  "7713f90708acb46c3e9153a314e4ca44e8285fc3c8fccd16dd5e39721be1d52c",
         x86_64_linux: "ea51a1ad41898f3293e0f04b9583fc1cdb827ed4501678e02e72bfec35f629ed"

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
