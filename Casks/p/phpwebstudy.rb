cask "phpwebstudy" do
  arch arm: "-arm64"

  version "1.0.51"
  sha256 arm:   "7bb40726f157b0778be7efb227fe292f5f1f338d4eebb13a9c7ed8a8a2949ec5",
         intel: "ddea25aac553d2f2e51e20ab84e80b641aa3114a43b8c35a85cff34fc92a5e86"

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
