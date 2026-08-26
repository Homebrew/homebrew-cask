cask "akuity" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.33.0-rl.1.0.20260826071501-4152df4bdd98"
  sha256 arm:          "e8dcd0ec97b61a486ff615efc343bcdfc065dc7d7117e1b4974e3bb888e9efbc",
         intel:        "c2bf4b18404cf701a1724c8f076f7ca79a6233be8b74e3b585a1a1a0854a1fcf",
         arm64_linux:  "68a997134e73bc210ad231e46f5433d769e6f67adecf7079267d1e0d697615fe",
         x86_64_linux: "c7277c46053e92e9b81a3ba383ff4f7b6e928c94912bb400952f5f51a31322d9"

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
