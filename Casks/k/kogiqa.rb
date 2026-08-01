cask "kogiqa" do
  version "0.5.1131"
  sha256 "ee4e1067cc63fc5dd4c57c42c928d364dc8d1c783516bc11e60ab26ecfa20fd2"

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

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.atagon.kogi.app.sfl*",
    "~/Library/Application Support/kogiQA",
    "~/Library/Preferences/com.atagon.kogi.app.plist",
  ]
end
