cask "akuity" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.33.0-rl.1.0.20260827115115-953dc42eb87d"
  sha256 arm:          "34cc85faaef9e85c3b47450ca7c28c74d580b7fc2750767231f8c356135f1a5d",
         intel:        "a8119272b2f399533cb301c8e42265e87ce928c2f6ba36c13e89c4bd24a0314d",
         arm64_linux:  "c396d45af6448fad5212be5526bed4aa32f446db6d720c3a59a1f763f7eb5103",
         x86_64_linux: "de3e442ff37ce140c0834ec855de83e11788f2910312226ebae91747938eb4a6"

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
