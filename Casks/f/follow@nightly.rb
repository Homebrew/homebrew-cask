cask "follow@nightly" do
  version "0.0.1,20241019"
  sha256 "2616e06c4cd91d0bc93746a23e5f0ce866e37ce9b18d9d7f384163e8ab1f53b9"

  url "https://github.com/RSSNext/Follow/releases/download/nightly-#{version.csv.first}-nightly.#{version.csv.second}/Follow-#{version.csv.first}-nightly.#{version.csv.second}-macos-universal.dmg",
      verified: "github.com/RSSNext/Follow/"
  name "Follow Nightly"
  desc "Next generation information browser"
  homepage "https://follow.is/"

  livecheck do
    url :url
    regex(/^nightly-(\d+\.\d+\.\d+)-nightly\.(\d{8})$/i)
    strategy :github_releases do |json, regex|
      json.map do |release|
        next if release["draft"]

        match = release["tag_name"]&.match(regex)
        next if match.blank?

        "#{match[1]},#{match[2]}"
      end
    end
  end

  depends_on macos: ">= :big_sur"

  app "Follow.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/is.follow.sfl*",
    "~/Library/Application Support/Follow",
    "~/Library/Logs/Follow",
    "~/Library/Preferences/is.follow.plist",
    "~/Library/Saved Application State/is.follow.savedState",
  ]
end
