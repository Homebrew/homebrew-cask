cask "kogiqa" do
  version "0.5.1041"
  sha256 "2f1ef4c4ae7d5b002b2a3a555cda0f4a33cda406c089a04eec141e405aaeceaa"

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
