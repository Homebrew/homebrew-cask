cask "akuity" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.31.0-rl.1.0.20260611100628-8e5388df2cef"
  sha256 arm:          "9ae08b49ca33c11464abad69cc583e6e1f6973e7305782840bda264a9092bdb6",
         intel:        "512c6b59b5f6f4921f6132c96b3f54c15fa934917b5fc29be714ebb4d71ea9a0",
         arm64_linux:  "4dd1d351ea9c26c3131a00b7eddc0d4a2be58f1f388bd11c537b9ad8f7e0b671",
         x86_64_linux: "e47877f7078dfafdb9518e267af1133ccf91a79ea08b9a844d10940af366db5d"

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
