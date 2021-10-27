cask "min" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "1.21.0"

  url "https://github.com/minbrowser/min/releases/download/v#{version}/Min-v#{version}-darwin-#{arch}.zip",
      verified: "github.com/minbrowser/min/"
  if Hardware::CPU.intel?
    sha256 "4b81d90a2dc6fa5799219409af93ba2ff19e851742c9cfce73bafc3105d8ad5e"
  else
    sha256 "31160e1f8dd6662d58e8cb8570c7814ddc631266060ce45a2f9466a9879cd520"
  end

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
