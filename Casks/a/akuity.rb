cask "akuity" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.26.2-0.20260114134320-72d6013be803"
  sha256 arm:          "a76cc1981b07ae1f8b8ed4a3839e3b75016c949ac5a317aa360ed287b1fb64c4",
         intel:        "eb9142bfe630bd02142298bb00285b41bc26a5c2a5d1c41a0559a6841bf8a995",
         arm64_linux:  "4caa5ad40660e64f7ae955beae877d1a1b26e1569ad995f8af0353d197520a07",
         x86_64_linux: "436a7ea0c3cdd07d74093e238192e67e220d9391c1ca53af87eadf05f3f49324"

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
