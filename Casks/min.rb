cask "min" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "1.23.0"

  if Hardware::CPU.intel?
    sha256 "8e239e8d6a848e70457d7301e8a7a18d3a974ec97b864501c5685f76b32a1bdd"
  else
    sha256 "b773809dce69c29710c27eb205929604b677d80a0229ca071bd4eca41ea8a6e4"
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
