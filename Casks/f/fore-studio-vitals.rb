cask "fore-studio-vitals" do
  version "1.10"
  sha256 "ce07bf385f0c67ac7881bf60c85cb39c5371a8b2fcb28abe2edf90acd03dbf37"

  url "https://statics.fore.studio/vitals/downloads/Vitals-#{version}.dmg"
  name "Vitals"
  desc "System monitor with per-app metrics and history"
  homepage "https://vitalsmac.com/"

  livecheck do
    url "https://statics.fore.studio/vitals/updates/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  conflicts_with cask: "vitals"
  depends_on macos: :sequoia

  app "Vitals.app"
  binary "#{appdir}/Vitals.app/Contents/Helpers/vitals"
  manpage "#{appdir}/Vitals.app/Contents/Resources/vitals.1"
  bash_completion "#{appdir}/Vitals.app/Contents/Resources/vitals.bash"
  zsh_completion "#{appdir}/Vitals.app/Contents/Resources/_vitals"
  fish_completion "#{appdir}/Vitals.app/Contents/Resources/vitals.fish"

  uninstall launchctl: "com.forestudio.Vitals.helper",
            quit:      "com.forestudio.Vitals"

  zap trash: [
    "~/Library/Application Support/Vitals",
    "~/Library/Caches/com.forestudio.Vitals",
    "~/Library/HTTPStorages/com.forestudio.Vitals",
    "~/Library/Preferences/com.forestudio.Vitals.plist",
    "~/Library/WebKit/com.forestudio.Vitals",
  ]
end
