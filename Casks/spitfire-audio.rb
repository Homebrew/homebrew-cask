cask "spitfire-audio" do
  version "3.3.17,1634741700"
  sha256 "52cc1e28b23804ab92c78862cf51bb732e2c90e19ca555bfc628aeab8cfbff99"

  url "https://d1t3zg51rvnesz.cloudfront.net/p/files/lm/#{version.after_comma}/mac/SpitfireAudio-Mac-#{version.before_comma}.dmg",
      verified: "d1t3zg51rvnesz.cloudfront.net/"
  name "Spitfire Audio"
  desc "Download manager for Spitfire audio libraries"
  homepage "https://www.spitfireaudio.com/info/library-manager/"

  livecheck do
    url "https://www.spitfireaudio.com/library-manager/download/mac/"
    strategy :header_match do |headers|
      match = headers["location"].match(%r{/(\d+)/.*-(\d+(?:\.\d+)*)\.dmg}i)
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
