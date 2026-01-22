cask "akuity" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.26.2-0.20260122163917-3587f7d538e8"
  sha256 arm:          "558eee80af1ca9b4c59ae6167df2c6e62830e288121decdb28f0632e79ce71e4",
         intel:        "8e7f8bef51a16276ba5aa5a583fc46bd6f0f25ce2ce30624cc767dfbb6a2d01c",
         arm64_linux:  "6373ed178fd31852fef10474945f2cd9320f21af80256d6ebc13c48fd88ac849",
         x86_64_linux: "75f33df4d35a1f7ffed3c05219d2699e09eb5d25bb636aea64194955887aabd8"

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
