cask "akuity" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.27.2-0.20260217202639-956c9ab78b91"
  sha256 arm:          "3ea858fb96caa057be44b2b40fab85ca6743e6c1af4cb2b454a5f197f5bc97c6",
         intel:        "4df07ee44b9f2722903e9a0bf38a32939618498af7a7cc7784502ae0f2eda22f",
         arm64_linux:  "d5e50c3a42328018fe8a3c82439db9a8ef64c91e48945e2a13012fd13b49675c",
         x86_64_linux: "9425e2b2a1a8544d2dfc1ba1a9c116c77b802136f89c1e4ef75d8fa5a59454e4"

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
