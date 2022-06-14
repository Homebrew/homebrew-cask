cask "phpwebstudy" do
  version "1.0.15"
  sha256 "0da8f558e484e0ba4df946fa4869509275d3523ea4b20497bf844d9b3513e0b7"

  url "https://github.com/xpf0000/PhpWebStudy/releases/download/v#{version}/PhpWebStudy-#{version}-mac.zip",
      verified: "github.com/xpf0000/PhpWebStudy/"
  name "PhpWebStudy"
  desc "PHP and Web develop environment manager"
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
