cask "phpwebstudy" do
  arch arm: "-arm64"

  version "1.0.52"
  sha256 arm:   "44c09cf0f29864e2044e2662ce1aedd167e1474f3d2adf3c31af46f13992c6a7",
         intel: "bc1d5a841e08b8de3550358b31819d049957439b8dbf169724f20f9f592a791c"

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
