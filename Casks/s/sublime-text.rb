cask "sublime-text" do
  # NOTE: The first digit of the build number is the major version.
  version "4180"
  sha256 "4ad971b932849ec5e40740e5052ee5108b0ed30867cbe68024d2e436a19e60d0"

  url "https://download.sublimetext.com/sublime_text_build_#{version}_mac.zip"
  name "Sublime Text"
  desc "Text editor for code, markup and prose"
  homepage "https://www.sublimetext.com/"

  livecheck do
    url "https://www.sublimetext.com/updates/#{version[0]}/stable_update_check"
    strategy :json do |json|
      json["latest_version"]&.to_s
    end
  end

  auto_updates true
  conflicts_with cask: "sublime-text@dev"

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
    "~/Library/Caches/Sublime Text (Safe Mode)",
    "~/Library/Caches/Sublime Text 3",
    "~/Library/Caches/Sublime Text",
    "~/Library/HTTPStorages/com.sublimetext.#{version[0]}",
    "~/Library/HTTPStorages/com.sublimetext.3",
    "~/Library/Preferences/com.sublimetext.#{version[0]}.plist",
    "~/Library/Preferences/com.sublimetext.3.plist",
    "~/Library/Saved Application State/com.sublimetext.#{version[0]}.savedState",
    "~/Library/Saved Application State/com.sublimetext.3.savedState",
  ]
end
