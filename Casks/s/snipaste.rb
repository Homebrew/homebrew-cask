cask "snipaste" do
  version "2.11"
  sha256 "bed8e19ac595144e34820499f96496caab9d593e7deda53ed5e47a98e6c42a8e"

  url "https://download.snipaste.com/archives/Snipaste-#{version}.dmg"
  name "Snipaste"
  desc "Snip or pin screenshots"
  homepage "https://www.snipaste.com/"

  livecheck do
    url "https://dl.snipaste.com/mac"
    regex(/Snipaste[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
    strategy :header_match
  end

  auto_updates true

  app "Snipaste.app"

  uninstall quit: "com.Snipaste"

  zap trash: [
    "~/.snipaste/",
    "~/Library/Preferences/com.Snipaste.plist",
  ]
end
