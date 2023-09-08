cask "phpwebstudy" do
  arch arm: "-arm64"

  version "1.0.49"
  sha256 arm:   "805d6b5127244f58794c912f62d73e79d5a05f80b330ae8df1baadf06bd2a78f",
         intel: "220250c4c077470df865136e33e13314bb02d0fd7880cd8c611d7d845443ba4a"

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
