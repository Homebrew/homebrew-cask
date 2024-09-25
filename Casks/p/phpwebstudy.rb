cask "phpwebstudy" do
  arch arm: "-arm64"

  version "4.3.3"
  sha256 arm:   "c916f07809b7639c19a7c3160f05bcd1c098db074e2068d17c458e8972965ac1",
         intel: "0a134dee85ebc5669fd233387ca0329c40426a38f3b073cc699a411fe59d5472"

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
