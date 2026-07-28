cask "kogiqa" do
  version "0.5.1120"
  sha256 "04ad76b2c4dd155531b715e27d09181817e114997e1b9c092fd0046c4b5861e4"

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
