cask "akuity" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.23.1-0.20250612014043-c25833fd82d1"
  sha256 arm:          "2e08148c23e5b84991c150e5215d342ea11f887fe2b6a090bdbd12f6ae5d67ac",
         intel:        "ceeb504d4238b434ec72f9365b24b4724e0fdf8319c211d6a7f542ac98b5957c",
         arm64_linux:  "3acaa1d9cfba472494523cf63596966928aae2d491d6c58931911ba596263e14",
         x86_64_linux: "1b2cefdd6aa6c4135dcd3fca7abed4c1439125bf9f320d24d86f9b1e35929e52"

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
