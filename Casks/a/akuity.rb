cask "akuity" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.24.1-0.20250815174734-cbff5404270e"
  sha256 arm:          "a93fea181d3244c646a3eb05264e424cdf13c6c7dafa378387315a6022a3a4aa",
         intel:        "30c4dab4327bb2bcfe9cca5e86d1d5116458566fc07f15d75eab4d81dd6727e9",
         arm64_linux:  "24dfb76100391b479367bc008ea6eee88d5ce9a7920e63b820f7fdf816818f12",
         x86_64_linux: "63aafb5275ded507912d089ee153aed7916a48f946082d375cc20c10d42b9655"

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
