cask "pia" do
  version "3.0.3"
  sha256 "696dafca5d4a4472eca0c1ded044a3ef3448d767e0a8a65c239ec5c415187964"

  url "https://github.com/LINCnil/pia/releases/download/v#{version}/pia-#{version}.dmg"
  name "Pia"
  desc "Privacy Impact Assessment Tool"
  homepage "https://github.com/LINCnil/pia"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :high_sierra"

  app "pia.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.atnos.pia.sfl*",
    "~/Library/Application Support/CrashReporter/pia_*.plist",
    "~/Library/Application Support/pia",
    "~/Library/Logs/pia",
    "~/Library/Preferences/com.atnos.pia.plist",
    "~/Library/Saved Application State/com.atnos.pia.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
