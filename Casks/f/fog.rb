cask "fog" do
  version "1.4.5"
  sha256 "dbf1216fce69ead08e9e9a37b18391d3d65e7f06ae4e6f633e7047832c6b1adc"

  url "https://github.com/vitorgalvao/fog/releases/download/#{version}/Fog-#{version}-mac.zip"
  name "Fog"
  desc "Unofficial overcast.fm podcast app"
  homepage "https://github.com/vitorgalvao/fog"

  deprecate! date: "2023-12-17", because: :discontinued

  app "Fog.app"

  uninstall quit: "com.vitorgalvao.fog"

  zap trash: [
    "~/Library/Application Support/Fog",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.vitorgalvao.fog.sfl*",
    "~/Library/Caches/Fog",
    "~/Library/Preferences/com.vitorgalvao.fog.helper.plist",
    "~/Library/Preferences/com.vitorgalvao.fog.plist",
    "~/Library/Saved Application State/com.vitorgalvao.fog.savedState",
  ]
end
