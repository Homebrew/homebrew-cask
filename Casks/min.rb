cask "min" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "1.22.0"

  if Hardware::CPU.intel?
    sha256 "a29adf556203cbf78673193de54ca31f1d17c9cde039afab8f9b2210b6bc6ac9"
  else
    sha256 "07a8ca5773d00eebf0df6be4156de22c6a3c20310b27558410d12bdb1178bd36"
  end

  url "https://github.com/minbrowser/min/releases/download/v#{version}/Min-v#{version}-darwin-#{arch}.zip",
      verified: "github.com/minbrowser/min/"
  name "Min"
  desc "Minimal browser that protects privacy"
  homepage "https://minbrowser.github.io/min/"

  app "Min.app"

  zap trash: [
    "~/Library/Application Support/Min",
    "~/Library/Caches/Min",
    "~/Library/Saved Application State/com.electron.min.savedState",
  ]
end
