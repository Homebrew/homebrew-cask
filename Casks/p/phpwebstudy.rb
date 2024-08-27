cask "phpwebstudy" do
  arch arm: "-arm64"

  version "4.2.0"
  sha256 arm:   "8e8823befa1d60c9dc7421cc478c492fe60a2f6cb004a5a69fb4fbc3f5cdad51",
         intel: "0409d441d6e1c7ee02440fb8608d63d1fd4f0bff6b3eee6c7b15607e2c014586"

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
