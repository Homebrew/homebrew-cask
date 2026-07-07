cask "akuity" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.31.0-rl.5.0.20260707144231-8cb2d34c9ef1"
  sha256 arm:          "1f9baf8b5f8ce2d7acbfa06ea5f58baa61d289000b3b6186b566734d1887871a",
         intel:        "7e4989628b13bdaea1c3399e52e9d6cbbe4652d8579f6298a2dcb2f2799cc9d5",
         arm64_linux:  "0c657e79e218bbad69c944039d861cfb199f674d455a650b36bf8682e2668264",
         x86_64_linux: "25d670b163a7c6715c1d00a3ad5706b8faec001b2f846a6c3830f85ea9af187b"

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
