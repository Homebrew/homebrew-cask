cask "akuity" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.33.1-rl.0.20261013081806-5c80cb338797"
  sha256 arm:          "c174454712a0971c2b377a8698b1a243be07950637d846257d07ba6dc0e1698e",
         intel:        "3f5b3a42e1fb326df6970fb35ce8fd7d3221bc96389f7606b3f673bbbd3d2328",
         arm64_linux:  "a0d8fec3baf77a7b33628d435dac60199beff67784e22fdae0b6dee625ea641c",
         x86_64_linux: "336e770f68aac8058adb3222c0dec4792fa481c93821cce860c14b0cdd3f4409"

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
