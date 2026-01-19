cask "kogiqa" do
  version "0.4.946"
  sha256 "8fe9af93c2d2999f340bbe8948ed6d40138eda1832e952138a73e88b1e1cd3e9"

  url "https://updater.kogiqa.com/release/kogi-qa-#{version}-universal.dmg"
  name "kogiQA"
  desc "UI automation tool using natural language descriptions"
  homepage "https://kogiQA.com/"

  livecheck do
    url "https://updater.kogiqa.com/release/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "kogiQA.app"

  zap trash: "~/Library/Application Support/kogiQA"
end
