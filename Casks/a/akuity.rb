cask "akuity" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.31.0-rl.5.0.20260720021728-aed215d68891"
  sha256 arm:          "812b76e8428e729dcb4b53cbf238a93186424768230cb3dfe47ac11adc4d2aae",
         intel:        "7d281323614a4c21be24f065086e144a258e3762d027ef9a2c7b5d8852e10c23",
         arm64_linux:  "244c40f8866904309cdca4987b0d26c5316d5f114577246669fd9fa43b0c9821",
         x86_64_linux: "50edcba151d50929101a60be03401f035be9065ad6487c54761c32c9c237c23c"

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
