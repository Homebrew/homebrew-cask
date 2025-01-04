cask "aegisub" do
  version "3.4.1"
  sha256 "006f69f117552a071503f723ad9ac8685e8c051055dcb132e6409c9a2f4cde64"

  url "https://github.com/TypesettingTools/Aegisub/releases/download/v#{version}/Aegisub-#{version}.dmg"
  name "Aegisub"
  desc "Create and modify subtitles"
  homepage "https://github.com/TypesettingTools/Aegisub"

  # The repo has a garbage "r6962" tag from 2012 that should be excluded
  livecheck do
    strategy :git do |tags|
      # example: v3.4.1
      tags.filter_map { |tag| tag[/^v?(\d+(?:\.\d+)*)$/i, 1] }
    end
  end

  app "Aegisub.app"

  uninstall quit: "com.aegisub.aegisub"

  zap trash: [
    "~/Library/Application Support/Aegisub",
    "~/Library/Preferences/com.aegisub.aegisub.plist",
    "~/Library/Saved Application State/com.aegisub.aegisub.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
