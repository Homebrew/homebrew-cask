cask "kogiqa" do
  version "0.5.1085"
  sha256 "8c9882c8761a9e34a129408898819f50aabf04410b6433a7797260df540bcddb"

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
