cask "akuity" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.34.0-rl.1.0.20261020012503-1c3f2e5b344a"
  sha256 arm:          "d853a354231849e8f478c0b9a826c37d8ade36a8a37f59fe05fbc7115023990f",
         intel:        "4113d11c3ee2534fe446a16822cdd9519a30587cf32afed213617880dc210a3a",
         arm64_linux:  "e2418824dbf316d05726e4e6080372c2e742c530fdbc8d504f43625d08a25792",
         x86_64_linux: "6077a9364f1549ba28042f21ba91b52c3e5c62c338d2d6341b4fdc2dcb0dd616"

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
