cask "spitfire-audio" do
  version "3.2.20,1615300200"
  sha256 "7036dfe458d0e543b261cc2490c67df1911aff463fc4d023269606fe52e5b0a4"

  url "https://d1t3zg51rvnesz.cloudfront.net/p/files/lm/#{version.after_comma}/mac/SpitfireAudio-Mac-#{version.before_comma}.dmg",
      verified: "d1t3zg51rvnesz.cloudfront.net/"
  name "Spitfire Audio"
  desc "Downloade manager for Spitfire audio libraries"
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
