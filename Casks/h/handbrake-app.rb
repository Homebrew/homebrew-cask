cask "handbrake-app" do
  livecheck_arch = on_arch_conditional arm: "arm64", intel: "x86_64"

  version "1.11.0"
  sha256 "d63d9bb325b8d5b5469b56b534422b6437f015baf6fce9d4323a1e55ded5c365"

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

  app "HandBrake.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/fr.handbrake.handbrake.sfl*",
    "~/Library/Application Support/HandBrake",
    "~/Library/Caches/fr.handbrake.HandBrake",
    "~/Library/Preferences/fr.handbrake.HandBrake.plist",
    "~/Library/Saved Application State/fr.handbrake.HandBrake.savedState",
  ]
end
