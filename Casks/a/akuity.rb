cask "akuity" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.33.1-rl.0.20261009073747-c5c953f0cbdc"
  sha256 arm:          "bf8ce05b16328ec993d0c91d3a055939e11f7f0743bb86f0a4faec21e5229c92",
         intel:        "186a1dd97208d01073eb45369fdbf0b65c6c037a1fa39070618a57b99afca926",
         arm64_linux:  "c7edaeb98db7e879fee7b95e624223841fecfdd97b447c76c98739c36a5bf087",
         x86_64_linux: "47f9ab9abca9d4388df9013730e6f2a3705d3f77ae0c443e83f376ad320e794f"

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
