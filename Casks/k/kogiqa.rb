cask "kogiqa" do
  version "0.5.1114"
  sha256 "8ee0f8cbba9ea9ac9d66cb79de2070d87bd9743f9e37c28c8c9e329b3bae6a71"

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
