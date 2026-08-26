cask "akuity" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.33.0-rl.1.0.20260825092950-4fce982d11e8"
  sha256 arm:          "7dafd221351e55ab12082a1d18812184e410c46699067724fb24d49ee8931ea2",
         intel:        "c3d010e3012b8888e92160eb003f04604e6157bdf7f44c6f6184e106dea580dc",
         arm64_linux:  "ca887759f712c9bb612feba00bfbf320752f059154bbfa64fd2c274e8d26e8f8",
         x86_64_linux: "ca48703ba2aae39fa277ef1eb1c5d9ee953c57adba177f2bbfb08a9d319c0b7d"

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
