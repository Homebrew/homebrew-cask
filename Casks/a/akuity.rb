cask "akuity" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.34.0-rl.1.0.20261117232951-e36901d37e3f"
  sha256 arm:          "96423b0a2282d7b6d341d4d442812f23ee3d269172aa5e56d09d1d18227806b2",
         intel:        "e62cfc129901f0554cb4b4b45985017c6702b2e50c58c02b44b49e80950135aa",
         arm64_linux:  "57e7f62dfca80ab215d6bf47990c942fce878a34f1b9054cd0aadc1826eb9aef",
         x86_64_linux: "28cca2fc8935c393491b6896177eb5f2775b55af648df4158ca55587c5541357"

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
