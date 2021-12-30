cask "min" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "1.22.2"

  if Hardware::CPU.intel?
    sha256 "d5be023e5de838e89dfad852d364519028f76ed7642eef87e9eb2da8e42cd8cd"
  else
    sha256 "1110f2ab66c0ab60d7aa878f4301e1afdbb81854ce9f2a2d097200b50adce231"
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
