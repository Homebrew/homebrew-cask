cask "phpwebstudy" do
  arch arm: "-arm64"

  version "1.0.44"
  sha256 arm:   "f3474cbca09efffb330b9c628a4dc09f23fed9fafa1de41854046c7169da4972",
         intel: "be3b686ac1024b50af3abeab64a572b6f9c1a27e79bf44dcb2902b6a56c99762"

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
