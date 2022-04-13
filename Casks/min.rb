cask "min" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "1.24.0"

  if Hardware::CPU.intel?
    sha256 "c8238dae0401afe743a2c3080ef852c6bacf9c2a7d832e9c13bcb3d06ea35761"
  else
    sha256 "4c72c73214b97edaaac631e38c09096c6b07080145c03fda36bbbd07956dc78e"
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
