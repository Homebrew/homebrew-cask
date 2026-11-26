cask "akuity" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.34.0-rl.1.0.20261125172105-dbcc70a1ffef"
  sha256 arm:          "2e9e285b399e3f5cb0a913badc0817cf9c39208b4dc87a5153e8c0ca983bd87b",
         intel:        "e97f248122c7ffa2cde09650545ee19a49eb7ed93096864eb6575d129d6f304e",
         arm64_linux:  "56f8642896639881ce4d1595a84b0d6f0362af29d7dd890419b13fe2ac945adf",
         x86_64_linux: "4c03590f3072d7d9b6ef357800d810e1ffd08613fee6b00517d13a3f3e022d1d"

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
