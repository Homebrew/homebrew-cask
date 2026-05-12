cask "recut" do
  version "4.4.3,eyJfcmFpbHMiOnsiZGF0YSI6MTA0LCJwdXIiOiJibG9iX2lkIn19--e995f3090d9cfd4a349253e3682ae4d3e686bcf9"
  sha256 "554b8c2fc19a7e3768c01c6efe933a4c6db8fc92c87f771c6a1367b1f895abd5"

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
