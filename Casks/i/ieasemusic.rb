cask "ieasemusic" do
  version "1.3.4"
  sha256 "6b7f6d7be86b5a37f3c203012261ec19bd3492bc489a94c1e1dbcc9299b0cc26"

  url "https://github.com/trazyn/ieaseMusic/releases/download/v#{version}/ieaseMusic-#{version}-mac.dmg"
  name "ieaseMusic"
  desc "Third-party NetEase cloud music player"
  homepage "https://github.com/trazyn/ieaseMusic"

  deprecate! date: "2024-07-15", because: :repo_archived

  auto_updates true

  app "ieaseMusic.app"

  zap trash: [
    "~/Library/Application Support/ieasemusic",
    "~/Library/Preferences/gh.trazyn.ieasemusic.helper.plist",
    "~/Library/Preferences/gh.trazyn.ieasemusic.plist",
    "~/Library/Saved Application State/gh.trazyn.ieasemusic.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
