cask "sublime-text" do
  version "4.126"
  sha256 "06e47f404b3e1c14d505bfbd0b884f8d5a62c9f376a62f735a693dc31d9cc212"

  url "https://download.sublimetext.com/sublime_text_build_#{version.no_dots}_mac.zip"
  name "Sublime Text"
  desc "Text editor for code, markup and prose"
  homepage "https://www.sublimetext.com/"

  livecheck do
    url "https://www.sublimetext.com/download"
    regex(/href=.*?v?(\d+)_mac\.zip/i)
    strategy :page_match do |page, regex|
      match = page.match(regex)[1]
      next if match.blank?

      "#{match[0]}.#{match[1..]}"
    end
  end

  auto_updates true
  conflicts_with cask: "sublime-text-dev"

  app "Sublime Text.app"
  binary "#{appdir}/Sublime Text.app/Contents/SharedSupport/bin/subl"

  uninstall quit: "com.sublimetext.#{version.major}"

  # Sublime Text 4 uses `Sublime Text 3` and `com.sublimetext.3` dirs if they exist
  # Otherwise, it creates `Sublime Text` and `com.sublimetext.4`
  # More info: https://www.sublimetext.com/docs/side_by_side.html
  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.sublimetext.#{version.major}.sfl*",
    "~/Library/Application Support/Sublime Text",
    "~/Library/Application Support/Sublime Text (Safe Mode)",
    "~/Library/Application Support/Sublime Text 3",
    "~/Library/Caches/com.sublimetext.#{version.major}",
    "~/Library/Caches/com.sublimetext.3",
    "~/Library/Caches/Sublime Text",
    "~/Library/Caches/Sublime Text (Safe Mode)",
    "~/Library/Caches/Sublime Text 3",
    "~/Library/HTTPStorages/com.sublimetext.#{version.major}",
    "~/Library/HTTPStorages/com.sublimetext.3",
    "~/Library/Preferences/com.sublimetext.#{version.major}.plist",
    "~/Library/Preferences/com.sublimetext.3.plist",
    "~/Library/Saved Application State/com.sublimetext.#{version.major}.savedState",
    "~/Library/Saved Application State/com.sublimetext.3.savedState",
  ]
end
