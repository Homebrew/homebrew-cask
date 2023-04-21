cask "phpwebstudy" do
  arch arm: "-arm64"

  version "1.0.43"
  sha256 arm:   "5af8bc545c630e0d67a9e029dd9cffeb870bc7251e7f5d7a2f1174655a7382d3",
         intel: "25e3365e02b41c3c2e870de27f949d5c8ace4cb5c098284f987c77d6303f5f69"

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
