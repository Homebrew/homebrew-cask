cask "min" do
  arch = Hardware::CPU.intel? ? "x86" : "arm64"

  version "1.25.0"

  if Hardware::CPU.intel?
    sha256 "0b94b4585dba349f9763a2638ba3f51f3a7937c947a41f846bee8f341ee5dbdc"
  else
    sha256 "ab78b9d00b360fb600ca3e735fb036426f6fe96e9700e3f3136c81eb9800e449"
  end

  url "https://github.com/minbrowser/min/releases/download/v#{version}/min-v#{version}-mac-#{arch}.zip",
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
