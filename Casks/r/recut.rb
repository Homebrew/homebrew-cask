cask "recut" do
  version "5.1.1,eyJfcmFpbHMiOnsiZGF0YSI6Mjg5LCJwdXIiOiJibG9iX2lkIn19--a78484f8d70c77cedd71ddb6ae851907a6e354d7"
  sha256 "eab547bdf02a5130dca6fb6c60db060e9fd0b9a0b0666b50a3b8761837f58fa4"

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
