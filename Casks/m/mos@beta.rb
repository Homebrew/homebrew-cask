cask "mos@beta" do
  version "4.0.0-beta-20260201.1"
  sha256 "c1da629077f453eaa142f553176311c6ef588ab5d2bce5d1aa231e1670389c9a"

  url "https://github.com/Caldis/Mos/releases/download/#{version}/Mos.Versions.#{version}.zip",
      verified: "github.com/Caldis/Mos/"
  name "Mos"
  desc "Smooths scrolling and set mouse scroll directions independently"
  homepage "https://mos.caldis.me/"

  livecheck do
    url :url
    regex(/Mos\.Versions\.v?(\d+(?:\.\d+)+-beta-\d+(?:\.\d+)?)(?:[._-](\d+))?\.zip/i)
    strategy :github_releases do |json, regex|
      json.map do |release|
        next unless release["prerelease"]

        asset_versions = release["assets"]&.filter_map do |asset|
          match = asset["name"]&.match(regex)
          next if match.blank?

          match[2] ? "#{match[1]},#{match[2]}" : match[1]
        end&.compact

        next asset_versions if asset_versions.present?

        tag_match = release["tag_name"]&.match(/v?(\d+(?:\.\d+)+-beta-\d+(?:\.\d+)?)/i)
        next if tag_match.blank?

        tag_match[1]
      end.flatten.compact
    end
  end

  conflicts_with cask: "mos"

  app "Mos.app"

  zap trash: "~/Library/Preferences/com.caldis.Mos.plist"
end
