cask "phpwebstudy" do
  arch arm: "-arm64"

  version "4.1.0"
  sha256 arm:   "c695641943aa9eefa9ce08a46cda46edcdd71a2e3e9d7ebe6895ca6483b462d7",
         intel: "5e5ff58997f916eb3def703bdd5ba5874dd55104e27faaf273e44d0b636fc01b"

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
