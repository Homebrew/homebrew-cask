cask "akuity" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.25.1-0.20251030042310-58bc912eac78"
  sha256 arm:          "819f4879aeeb6e185379dabb27b68499e009594b0538ab9bc00e5bc5491c640a",
         intel:        "1ae08fb14d7cce428268980d02d562ed8152ac135a0ed9161d23acc0015683d9",
         arm64_linux:  "5174c4173d1440ceeeaccceab50c88c8309f1096c9a39fb3f16931e228df0deb",
         x86_64_linux: "078c838fda2cd38c3e907948ec6a43503308334c74e4f406715255303afa47cc"

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
