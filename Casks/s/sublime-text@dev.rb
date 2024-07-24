cask "sublime-text@dev" do
  # NOTE: The first digit of the build number is the major version.
  version "4177"
  sha256 "0f3d2151e50b1a8553e0e5b5d1f08b3311b0df6d5b23ee19bee9f1015c871cbf"

  url "https://download.sublimetext.com/sublime_text_build_#{version}_mac.zip"
  name "Sublime Text"
  desc "Text editor for code, markup and prose"
  homepage "https://www.sublimetext.com/dev"

  livecheck do
    url "https://www.sublimetext.com/download_thanks_dev?target=mac"
    regex(/href=.*?v?(\d+)_mac\.zip/i)
  end

  auto_updates true
  conflicts_with cask: "sublime-text"

  app "Sublime Text.app"
  binary "#{appdir}/Sublime Text.app/Contents/SharedSupport/bin/subl"

  uninstall quit: "com.sublimetext.#{version[0]}"

  # Sublime Text 4 uses `Sublime Text 3` and `com.sublimetext.3` dirs if they exist
  # Otherwise, it creates `Sublime Text` and `com.sublimetext.4`
  # More info: https://www.sublimetext.com/docs/side_by_side.html
  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.sublimetext.#{version[0]}.sfl*",
    "~/Library/Application Support/Sublime Text (Safe Mode)",
    "~/Library/Application Support/Sublime Text 3",
    "~/Library/Application Support/Sublime Text",
    "~/Library/Caches/com.sublimetext.#{version[0]}",
    "~/Library/Caches/com.sublimetext.3",
    "~/Library/Preferences/com.sublimetext.#{version[0]}.plist",
    "~/Library/Preferences/com.sublimetext.3.plist",
    "~/Library/Saved Application State/com.sublimetext.#{version[0]}.savedState",
    "~/Library/Saved Application State/com.sublimetext.3.savedState",
  ]
end
