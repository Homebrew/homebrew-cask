cask "gitscout" do
  version "1.0.0-rc.3,1c55c97"
  sha256 :no_check

  url "https://gitscout.com/marshmallows"
  name "Gitscout"
  desc "GitHub issues and notifications"
  homepage "https://gitscout.com/"

  disable! date: "2024-07-12", because: :unmaintained

  app "Gitscout.app"

  zap trash: [
    "~/Library/Application Support/Gitscout",
    "~/Library/Preferences/com.electron.gitscout.helper.plist",
    "~/Library/Preferences/com.electron.gitscout.plist",
    "~/Library/Saved Application State/com.electron.gitscout.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
