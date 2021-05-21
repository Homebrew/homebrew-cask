cask "edfbrowser" do
  version "1.83,0df0318a9d8d122320cb921bbab7be53"
  sha256 "9be58f3fd9d8c46d85e0f6e6e89703d3eed956e953fef0c275b24054fe65a142"

  url "https://gitlab.com/whitone/EDFbrowser/uploads/#{version.after_comma}/EDFbrowser-#{version.before_comma}.dmg",
      verified: "gitlab.com/whitone/EDFbrowser/"
  name "EDFbrowser"
  desc "EDF+ and BDF+ viewer and toolbox"
  homepage "https://www.teuniz.net/edfbrowser"

  livecheck do
    url "https://gitlab.com/whitone/EDFbrowser/-/tags?format=atom"
    strategy :page_match do |page|
      page.scan(%r{href=.*?/(\h+)/EDFbrowser[._-]?(\d+(?:\.\d+)*)\.dmg}i).map do |match|
        "#{match[1]},#{match[0]}"
      end
    end
  end

  app "EDFbrowser.app"

  zap trash: [
    "~/Library/Preferences/net.teuniz.EDFbrowser.plist",
    "~/Library/Saved Application State/net.teuniz.EDFbrowser.savedState",
    "~/.EDFbrowser",
  ]
end
