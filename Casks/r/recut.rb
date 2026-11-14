cask "recut" do
  version "4.5.8,eyJfcmFpbHMiOnsiZGF0YSI6MjU3LCJwdXIiOiJibG9iX2lkIn19--b33b35e68451007387413d29a8bf20a0cdd7b052"
  sha256 "c731d47a2a412b6ded5a537c4be28aa4f73354c7bff94112cce14b10f327187c"

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
