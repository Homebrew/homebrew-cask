cask "akuity" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.34.0-rl.1.0.20261028200731-473578b318ac"
  sha256 arm:          "a460b89e98df9915b4dff4676dfb46b79cfd2addb3e4688eb8790d650d0d51ee",
         intel:        "c6ed02ff9c307578055a219f6e6fb551cec6230834d229ecf53cecb6c7bf8552",
         arm64_linux:  "32c09fd1fc2a4e3615b40703a9721c0b948cf2d808a5baada84a6980fefe7e0c",
         x86_64_linux: "612c9088d17765fc90ba036c2bfde2981a655f9300718a7cc1e256d2dbb98149"

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
