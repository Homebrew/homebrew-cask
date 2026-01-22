cask "kogiqa" do
  version "0.5.974"
  sha256 "df654bf829d19ff1335c069499d8687fcca1e86a740548ec8d41bedbdc44e83e"

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
