cask "akuity" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.25.1-0.20250930233632-76b35cd0c2be"
  sha256 arm:          "d68278e9e1591dcd018ba6aeb03d15171282bedf04e1d3457da00e2ce150fdd6",
         intel:        "358d1f8d76690f0a83f10b7c9e1dec31f7c3bc56afeb1702a2d38f7775cb92ef",
         arm64_linux:  "abc4d4e6d916aaaa52232709f6f4f4661b88f52709db7c4a314b173a04b97dcd",
         x86_64_linux: "d80971b4c6b252e3860df034dbcc2330b7c36f1b7dbc9ace35cbc513cfbf5a48"

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
