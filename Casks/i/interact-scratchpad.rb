cask "interact-scratchpad" do
  version "2.2.1"
  sha256 :no_check

  url "https://s3-us-west-2.amazonaws.com/downloads.agiletortoise.com/Interact+Scratchpad.app.zip",
      verified: "s3-us-west-2.amazonaws.com/downloads.agiletortoise.com/"
  name "Interact Scratchpad"
  desc "Menu bar utility to create contacts from snippets of text"
  homepage "https://docs.getdrafts.com/docs/misc/interact-scratchpad"

  deprecate! date: "2024-11-15", because: :discontinued

  depends_on macos: ">= :monterey"

  app "Interact Scratchpad.app"

  zap trash: [
    "~/Library/Application Scripts/com.agiletortoise.Interact-Scratchpad-OSX",
    "~/Library/Application Scripts/com.agiletortoise.Interact-Scratchpad-OSX.Interact-Scratchpad-Share",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.agiletortoise.interact-scratchpad-osx.sfl*",
    "~/Library/Containers/com.agiletortoise.Interact-Scratchpad-OSX",
    "~/Library/Containers/com.agiletortoise.Interact-Scratchpad-OSX.Interact-Scratchpad-Share",
  ]
end
