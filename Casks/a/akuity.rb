cask "akuity" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.31.0-rl.5.0.20260625151842-1894c0eb24e4"
  sha256 arm:          "cd7c0f84edb9b7e08e76786d78c2eec65a84a40dbe771bb3ffec5b65100e56be",
         intel:        "0236386e907b03b54bee44d1f19f3b598765e2720ddae77e7bc0d1bc56a1bd3a",
         arm64_linux:  "1a7ba6af23f9d07ad24500d80de60bf999920dd8324dd4ee3f1bdeca7b394982",
         x86_64_linux: "a54770d48610ffb29df96affbacd45f1d1c9e2a6dbc874d20f8a89eaee8299a4"

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
