cask "phpwebstudy" do
  arch arm: "-arm64"

  version "2.4.0"
  sha256 arm:   "a4bd46b3f580b8fa3d10607acc1c36b4bfaada6755824c348055cada3c1ad8a3",
         intel: "1f57f2be3ed88c4f7c64a9506fc0b9edc5f695acc20ec8f5be549b2f59b7dce6"

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
