cask "phpwebstudy" do
  arch arm: "-arm64"

  version "1.0.54"
  sha256 arm:   "f5feb0b3ceada258bb48ea561ab011a82c5be8d3ce0e2283e79b45e28de2844f",
         intel: "085aa9e735d273d40726e44ec54bd3ef8b9c32111df92bfe3333d36ccee6949f"

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
