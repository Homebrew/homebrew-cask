cask "akuity" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.26.2-0.20251211031323-09d5a282cc0b"
  sha256 arm:          "78af15edc10b47387bf4c4fdff448eecf02c63f876566eb266a46e2737b70191",
         intel:        "bbf985c49f00c5a5c05914db285e706b78131de07303e00cb0f614856e8256e9",
         arm64_linux:  "e5105b83bee1ac0840fd50bcaccdf5ecb6e444a49c6e7b1f84317756dcff6acd",
         x86_64_linux: "14635b657e4ff8d9c6c0d2c59e0e609b69efce1eb40387e24e8b39d76d2e3545"

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
