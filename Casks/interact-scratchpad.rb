cask "interact-scratchpad" do
  on_big_sur :or_older do
    version "2.0.4"
    sha256 :no_check

    url "https://s3.us-west-2.amazonaws.com/downloads.agiletortoise.com/Interact+Scratchpad-#{version.major_minor}.app.zip",
        verified: "s3.us-west-2.amazonaws.com/downloads.agiletortoise.com/"
  end
  on_monterey :or_newer do
    version "2.1.2"
    sha256 :no_check

    url "https://s3-us-west-2.amazonaws.com/downloads.agiletortoise.com/Interact+Scratchpad.app.zip",
        verified: "s3-us-west-2.amazonaws.com/downloads.agiletortoise.com/"
  end

  name "Interact Scratchpad"
  desc "Menu bar utility to create contacts from snippets of text"
  homepage "https://docs.getdrafts.com/docs/misc/interact-scratchpad"

  livecheck do
    url :url
    strategy :extract_plist
  end

  depends_on macos: ">= :catalina"

  app "Interact Scratchpad.app"

  zap trash: [
    "~/Library/Application Scripts/com.agiletortoise.Interact-Scratchpad-OSX",
    "~/Library/Application Scripts/com.agiletortoise.Interact-Scratchpad-OSX.Interact-Scratchpad-Share",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.agiletortoise.interact-scratchpad-osx.sfl2",
    "~/Library/Containers/com.agiletortoise.Interact-Scratchpad-OSX",
    "~/Library/Containers/com.agiletortoise.Interact-Scratchpad-OSX.Interact-Scratchpad-Share",
  ]
end
