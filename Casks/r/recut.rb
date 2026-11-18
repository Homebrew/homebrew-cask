cask "recut" do
  version "5.0.0,eyJfcmFpbHMiOnsiZGF0YSI6MjczLCJwdXIiOiJibG9iX2lkIn19--f6959b2d681c27d14e3c0050534381dc36b2f3d0"
  sha256 "5c8d0d053f38a29b92600a001027b25c35b6cdf1cfa7cffe14c409e56b7ce37b"

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
        "~/Library/Application Support/co.tinywins.recut",
        "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/co.tinywins.recut.sfl*",
        "~/Library/Application Support/Recut",
        "~/Library/Caches/co.tinywins.recut",
        "~/Library/Caches/com.tinywins.recut",
        "~/Library/Logs/co.tinywins.recut",
        "~/Library/Preferences/com.tinywins.recut.plist",
        "~/Library/Saved Application State/com.tinywins.recut.savedState",
      ],
      rmdir: "~/Documents/Recut Projects"
end
