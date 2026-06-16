cask "akuity" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.31.0-rl.1.0.20260616123514-f9773eea3fab"
  sha256 arm:          "cdc1829bff1e7543655e99a3b30bb9537bdd67ec36806a78e351623cc1bdf7f0",
         intel:        "5af69793066024e5955ef0fe0f00b7b424208d59e5e0afb15c0c7a6d1c750f75",
         arm64_linux:  "f3c2985f232af94f7398f3fc046d06ab9dd4cfdd7617a4da30f6664eacf09e69",
         x86_64_linux: "8a6a9b9ba523b7ba7abc7bdd089d4185be2db64dea34dd5a75c37e3ea5f11126"

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
