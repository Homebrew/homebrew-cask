cask "akuity" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.33.1-rl.0.20261012051813-00ac73ec6894"
  sha256 arm:          "10d61ab152f14f9282cf3d65eb7c2ee9a7363333f580b5948bd53bc56b0e606b",
         intel:        "675aea75e03ff913726f646f862b2006a907c6360b0defb67c9d326a07adfb6e",
         arm64_linux:  "bf0013cff63997028a8149194f330b3100d5288d2454ded5e215d29014737b56",
         x86_64_linux: "1ed3bf93c88d8c6dcc8d4eb5d2365d6d0b0c562719e7d6f59abd4b4e0f04dda0"

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
