cask "akuity" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.26.2-0.20251204232612-6254c68d7bb6"
  sha256 arm:          "84e4683511c455a5ca9ced8d051e5b5e235de5ef2f42b0aa00285c8b12f9a4e0",
         intel:        "d05f6ff4ae3d074834bc4dfd73a796d0e53d6d212878519dab696a948a2864d6",
         arm64_linux:  "da37e4f79f96e14a337b44f49d6718685040447d54baae0114ca6ed558412d91",
         x86_64_linux: "e9078c69cf09e314dea6cfea1a60b070944b694f183c61eaab8e46ec07ee89a3"

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
