cask "recut" do
  version "4.5.0,eyJfcmFpbHMiOnsiZGF0YSI6MTk1LCJwdXIiOiJibG9iX2lkIn19--9a27121e4922b32d9222a6daa09892f1676b5335"
  sha256 "ace7247c229f733cfe875b915e5ca09a80fa775efbc5675c952f15576c292f40"

  url "https://updates.getrecut.com/rails/active_storage/blobs/redirect/#{version.csv.second}/Recut_#{version.csv.first}_universal.dmg"
  name "Recut"
  desc "Remove silence from videos and automatically generate a cut list"
  homepage "https://getrecut.com/"

  livecheck do
    url "https://updates.getrecut.com/latest-mac"
    regex(%r{/redirect/([^/]+)/Recut[._-]v?(\d+(?:\.\d+)+)}i)
    strategy :header_match do |all_headers, regex|
      version = nil
      all_headers.each do |headers|
        match = headers["location"]&.match(regex)
        next unless match

        version = "#{match[2]},#{match[1]}"
        break
      end
      version
    end
  end

  depends_on :macos

  app "Recut.app"

  zap trash: [
    "~/Library/Application Support/Recut",
    "~/Library/Caches/com.tinywins.recut",
    "~/Library/Preferences/com.tinywins.recut.plist",
    "~/Library/Saved Application State/com.tinywins.recut.savedState",
  ]
end
