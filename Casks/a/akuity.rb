cask "akuity" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.24.1-0.20250725040808-ddaf4ce1efb3"
  sha256 arm:          "a6613eb7c44dead54df17b7b15847185dabb18f0f0d5edb5492accb47da89506",
         intel:        "4aa00313dd52af4692d1799b8cc32a01e7c7fab6c50c93b6392c2bcc7fe319ca",
         arm64_linux:  "8d5973aa2186fddf5174dc9b04c1fb8e2bafaf5cdea6b09f98fbdd876e5219a4",
         x86_64_linux: "8cdc1d54a8303a769dbf3a7cdcaa3d96e0ff5c7c7987f8630a6cbd8b172fcfe9"

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
