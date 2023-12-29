cask "browserosaurus" do
  arch arm: "arm64", intel: "x64"

  version "20.7.0"
  sha256 arm:   "254819388310bd75bc67f1442821fafe01c7e8e606fd4ffa7322b384da01ac86",
         intel: "e04e2c71886df3fdf6a3908c27c5d25e20679dcd1ab02972c40ec174cac48626"

  url "https://github.com/will-stone/browserosaurus/releases/download/v#{version}/Browserosaurus-darwin-#{arch}-#{version}.zip"
  name "Browserosaurus"
  desc "Open-source browser prompter"
  homepage "https://github.com/will-stone/browserosaurus"

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Browserosaurus.app"

  uninstall quit: "com.browserosaurus"

  zap trash: [
    "~/Library/Application Support/Browserosaurus",
    "~/Library/Preferences/com.browserosaurus.plist",
  ]
end
