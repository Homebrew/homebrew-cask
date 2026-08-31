cask "coteditor" do
  on_sonoma :or_older do
    on_big_sur :or_older do
      version "4.3.6"
      sha256 "8c1ecf6fd66a9885d428a6303d9d1c5ecb811c1c35c97bdbccdad72359d96ad9"
    end
    on_monterey do
      version "4.5.9"
      sha256 "fa3e4a1fdf7edfc109c5588292906d864d430d2e8bd3d84161b1f0a7892163f6"
    end
    on_ventura do
      version "4.8.7"
      sha256 "9c439ace99d6b74cf94738d24368ccc39c579902c7062f8e107c596061a58dda"
    end
    on_sonoma do
      version "5.2.3"
      sha256 "c01fa87e31d7aafd475f72bb41a340e1e34db27cc8afb73ba2f5e2ad316739a9"
    end

    livecheck do
      skip "Legacy version"
    end
  end
  on_sequoia :or_newer do
    version "7.0.8"
    sha256 "d065d99178f15df2a146eaba5b98de95e6ad4437802d9e8a62d61033fdc0ff90"

    livecheck do
      url "https://coteditor.com/appcast.xml"
      strategy :sparkle do |items|
        items.find { |item| item.channel.nil? }&.short_version
      end
    end
  end

  url "https://github.com/coteditor/CotEditor/releases/download/#{version}/CotEditor_#{version}.dmg"
  name "CotEditor"
  desc "Plain-text editor for web pages, program source codes and more"
  homepage "https://coteditor.com/"

  auto_updates true
  depends_on :macos

  app "CotEditor.app"
  binary "#{appdir}/CotEditor.app/Contents/SharedSupport/bin/cot"

  uninstall quit: "com.coteditor.CotEditor"

  zap trash: [
    "~/Library/Application Scripts/com.coteditor.CotEditor",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.coteditor.coteditor.sfl*",
    "~/Library/Caches/com.apple.helpd/Generated/com.coteditor.CotEditor.help*",
    "~/Library/Caches/com.apple.helpd/SDMHelpData/Other/English/HelpSDMIndexFile/com.coteditor.CotEditor.help*",
    "~/Library/Caches/com.apple.helpd/SDMHelpData/Other/Japanese/HelpSDMIndexFile/com.coteditor.CotEditor.help*",
    "~/Library/Caches/com.coteditor.CotEditor",
    "~/Library/Containers/com.coteditor.CotEditor",
    "~/Library/Preferences/com.coteditor.CotEditor.plist",
  ]
end
