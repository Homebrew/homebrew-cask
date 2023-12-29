cask "phpwebstudy" do
  arch arm: "-arm64"

  version "1.6.1"
  sha256 arm:   "396b61d11c81690650ffdb17a5d10b7c806aa34f7b7bd5380b3afe3ff753d690",
         intel: "7503521c7ab7115bd1334a6f78db42b392e1e06d5774d2e60c80955dd6d5b4cb"

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
