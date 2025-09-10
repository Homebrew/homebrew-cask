cask "akuity" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.25.1-0.20250910183045-1b8db63d21f4"
  sha256 arm:          "c1f07901eeed8c7f774745cc24dbdd62786c9658db5378d324177613d593a423",
         intel:        "5d40e96c4aec97a97df40605f1662d63387932a62d565216758d68ccee6e9c59",
         arm64_linux:  "cc7748023cf1d9081fd91b8dd4daaeacbb2e3e57254d9cede48c06eb5ef7d3ca",
         x86_64_linux: "7df086f243ce05d91710c7ef1789306b162a09f5a1ec5774e935c6348e03f103"

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
