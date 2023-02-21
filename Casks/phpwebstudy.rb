cask "phpwebstudy" do
  arch arm: "-arm64"

  version "1.0.36"
  sha256 arm:   "0b4af1e8dd7ec25ee92e16ba858d71ed9845fcd00891edc4d996f985ddbab108",
         intel: "1ddae5e1278d0b7a046d8431ae1a512be523acd81c52c80ebce0155dbd6b6f9b"

  url "https://github.com/xpf0000/PhpWebStudy/releases/download/v#{version}/PhpWebStudy-#{version}#{arch}-mac.zip",
      verified: "github.com/xpf0000/PhpWebStudy/"
  name "PhpWebStudy"
  desc "PHP and Web develop environment manager"
  homepage "https://www.macphpstudy.com/"

  livecheck do
    url "https://raw.githubusercontent.com/xpf0000/PhpWebStudy/master/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true

  app "PhpWebStudy.app"

  zap trash: [
    "~/Library/Application Support/PhpWebStudy",
    "~/Library/Logs/PhpWebStudy",
    "~/Library/PhpWebStudy",
  ]
end
