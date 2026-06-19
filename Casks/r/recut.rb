cask "recut" do
  version "4.4.7,eyJfcmFpbHMiOnsiZGF0YSI6MTIwLCJwdXIiOiJibG9iX2lkIn19--ffae8c34cd7c306d701115837fdbcb5d46374fc7"
  sha256 "43ee45135416ca969d72080adc61bb4ec3890c4ed7fbfe416e5963d517302487"

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
