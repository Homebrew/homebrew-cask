cask "min" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "1.22.1"

  if Hardware::CPU.intel?
    sha256 "9d1fc0de80c7db309893fa0caef23a6a08facb92fd6d78b85c7f2f40d9f73d6e"
  else
    sha256 "f61f62e0f715b8cdaa98f5cbaa4506e4526295f31d2db238732b6445c8156d09"
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
