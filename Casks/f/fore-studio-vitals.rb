cask "fore-studio-vitals" do
  version "1.13.9"
  sha256 "c60466727b35f863c9814e3a8f16ee7762fb906077abdb7d762db962856472f1"

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
