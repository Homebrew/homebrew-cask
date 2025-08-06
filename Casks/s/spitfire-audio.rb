cask "spitfire-audio" do
  version "3.4.13,1720086000"
  sha256 "1798f5776c181c217b66dd3a8a0f3d63156631b2584bee4d2943437b82c35269"

  url "https://d1t3zg51rvnesz.cloudfront.net/p/files/lm/#{version.csv.second}/mac/SpitfireAudio-Mac-#{version.csv.first}.dmg",
      verified: "d1t3zg51rvnesz.cloudfront.net/p/files/lm/"
  name "Spitfire Audio"
  desc "Download manager for Spitfire audio libraries"
  homepage "https://www.spitfireaudio.com/info/library-manager/"

  livecheck do
    url "https://www2.spitfireaudio.com/library-manager/download/mac/"
    regex(%r{/(\d+)/.*-(\d+(?:\.\d+)+)\.dmg}i)
    strategy :header_match do |headers, regex|
      match = headers["location"]&.match(regex)
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
