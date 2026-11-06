cask "recut" do
  version "4.5.6,eyJfcmFpbHMiOnsiZGF0YSI6MjM5LCJwdXIiOiJibG9iX2lkIn19--3f6c19d3f2b25ee11e2f71cdcd58c995ca94ad6b"
  sha256 "9eb8f385b4c0386989a69cff591d92ca71a9328dc4ce854db0b9f9c12c0eb237"

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
