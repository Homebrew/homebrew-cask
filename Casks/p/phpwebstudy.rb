cask "phpwebstudy" do
  arch arm: "-arm64"

  version "1.0.53"
  sha256 arm:   "edf8c095b6aa8f04684629fad06e1ab03a1f9e7826464416fffa7c6dceb29c41",
         intel: "7f57395b40aed53e06238c0f4ae28803d813f11871968d9fc4917b0d59629ba7"

  url "https://github.com/xpf0000/PhpWebStudy/releases/download/v#{version}/PhpWebStudy-#{version}#{arch}-mac.zip",
      verified: "github.com/xpf0000/PhpWebStudy/"
  name "PhpWebStudy"
  desc "PHP and Web development environment manager"
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
