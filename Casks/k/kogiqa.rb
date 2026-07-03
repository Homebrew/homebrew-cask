cask "kogiqa" do
  version "0.5.1097"
  sha256 "9ee9dda650c5753010e998eefbee563ab44b8cda12da8fe36083a1a30aa701f0"

  url "https://updater.kogiqa.com/release/kogi-qa-#{version}-universal.dmg"
  name "kogiQA"
  desc "UI automation tool using natural language descriptions"
  homepage "https://kogiQA.com/"

  livecheck do
    url "https://updater.kogiqa.com/release/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: :monterey

  app "kogiQA.app"

  zap trash: "~/Library/Application Support/kogiQA"
end
