cask "recut" do
  version "4.4.5,eyJfcmFpbHMiOnsiZGF0YSI6MTEwLCJwdXIiOiJibG9iX2lkIn19--9d7c63821eb82ee9c5269d20cb03942c6d2b35b6"
  sha256 "b016210eabdf5cc9ee2de18693074d0315c3155e9ee5d2069c620def49499bf4"

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
