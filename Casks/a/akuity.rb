cask "akuity" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.34.0-rl.1.0.20261111072628-6f23f4c954dd"
  sha256 arm:          "c1b2a0ae168e4799849c4efd96e893c3bc2fbdfb8781130e81730e6087b52ece",
         intel:        "5ff351286db6ef02f136290cac82d5d95d91fca5aac3e8d1c0c18bf65a2d5c9f",
         arm64_linux:  "f89904e770fd8eefdb7fb88b653d7f6442b8a8c6358120412b24a1b7b465706c",
         x86_64_linux: "ff7dc9cd57385853bf6754ecf52e90082ab86ba94d037d02b2c8bc3a21a1b035"

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
