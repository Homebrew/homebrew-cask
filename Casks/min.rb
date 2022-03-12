cask "min" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "1.23.1"

  if Hardware::CPU.intel?
    sha256 "7353d2159beebe5f8053ba251288ef01bc6ad846d2785ac40cdbed739772f9a3"
  else
    sha256 "fd6bf57a7f13a9c3b38b3ba4022d1c5cb645a0c596c230be869c7648f4449978"
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
