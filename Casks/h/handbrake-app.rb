cask "handbrake-app" do
  livecheck_arch = on_arch_conditional arm: "arm64", intel: "x86_64"

  version "1.11.2"
  sha256 "4afe27aaa77a7bbb0dcda1a335d96a5f53649f2649fb84de6982ffecc35de9d7"

  url "https://handbrake.fr/rotation.php?file=HandBrake-#{version}.dmg&update=true"
  name "HandBrake"
  desc "Open-source video transcoder"
  homepage "https://handbrake.fr/"

  livecheck do
    url "https://handbrake.fr/appcast.#{livecheck_arch}.xml"
    strategy :sparkle do |item|
      item.short_version.split.first
    end
  end

  auto_updates true
  depends_on :macos

  app "HandBrake.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/fr.handbrake.handbrake.sfl*",
    "~/Library/Application Support/HandBrake",
    "~/Library/Caches/fr.handbrake.HandBrake",
    "~/Library/Preferences/fr.handbrake.HandBrake.plist",
    "~/Library/Saved Application State/fr.handbrake.HandBrake.savedState",
  ]
end
