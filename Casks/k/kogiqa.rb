cask "kogiqa" do
  version "0.5.1065"
  sha256 "1b71931c9f1dffc622e8323260b169813cc26e7f149fed49d6766d4138707d9c"

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
