cask "hookshot" do
  version "1.24,55"
  sha256 "90ca5f61de4912f7958bd690e424fa3e962e69459ca0a796a7737da712984b4b"

  url "https://hookshot.app/downloads/Hookshot#{version.csv.first}.dmg"
  name "Hookshot"
  desc "Window snapping tool"
  homepage "https://hookshot.app/"

  deprecate! date: "2023-12-17", because: :discontinued

  auto_updates true
  depends_on macos: ">= :sierra"

  app "Hookshot.app"

  uninstall quit: "com.knollsoft.Hookshot"

  zap trash: [
    "~/Library/Application Support/Hookshot",
    "~/Library/Caches/com.knollsoft.Hookshot",
    "~/Library/Cookies/com.knollsoft.Hookshot.binarycookies",
    "~/Library/HTTPStorages/com.knollsoft.Hookshot",
    "~/Library/HTTPStorages/com.knollsoft.Hookshot.binarycookies",
    "~/Library/Preferences/com.knollsoft.Hookshot.plist",
  ]
end
