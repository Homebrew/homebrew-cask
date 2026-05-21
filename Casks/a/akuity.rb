cask "akuity" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.30.0-rl.2.0.20260520222748-e5e13c5cd5fb"
  sha256 arm:          "17ad90db32a01dfabbd9545b4a154f3acd95b5c645f5778dc9e5bd569f434028",
         intel:        "5f848b336fa9c34336358ee8abf1f8454e2ca03af5cb29dbf050d4d313b75b26",
         arm64_linux:  "1211679ead4927f51b9c17a655af947d319a1a45abd983add5d04d73f79cd6a8",
         x86_64_linux: "146b5673b01586b820566e14351ee365c7679f3295846c1842d9f4e48864becf"

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
