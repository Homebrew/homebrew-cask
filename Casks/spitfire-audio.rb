cask "spitfire-audio" do
  version "3.3.18,1635166800"
  sha256 "61bd4fa55052941040b8461e385e09b888458743843303406f35ce88b510c5fb"

  url "https://d1t3zg51rvnesz.cloudfront.net/p/files/lm/#{version.after_comma}/mac/SpitfireAudio-Mac-#{version.before_comma}.dmg",
      verified: "d1t3zg51rvnesz.cloudfront.net/"
  name "Spitfire Audio"
  desc "Download manager for Spitfire audio libraries"
  homepage "https://www.spitfireaudio.com/info/library-manager/"

  livecheck do
    url "https://www.spitfireaudio.com/library-manager/download/mac/"
    strategy :header_match do |headers|
      match = headers["location"].match(%r{/(\d+)/.*-(\d+(?:\.\d+)*)\.dmg}i)
      next if match.blank?

      "#{match[2]},#{match[1]}"
    end
  end

  auto_updates true

  app "Spitfire Audio.app"

  uninstall delete: [
    "/Library/LaunchDaemons/com.spitfireaudio.LibraryManagerHelper.plist",
    "/Library/Logs/Spitfire Audio",
    "/Library/PrivilegedHelperTools/com.spitfireaudio.LibraryManagerHelper",
  ]

  zap delete: [
    "~/Library/Caches/com.spitfireaudio.spitfireaudio",
    "~/Library/Preferences/com.spitfireaudio.spitfireaudio.plist",
  ]
end
