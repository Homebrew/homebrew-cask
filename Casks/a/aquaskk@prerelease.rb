cask "aquaskk@prerelease" do
  version "4.7.8"
  sha256 "e0c28724ff6eb5a01f95585a25d25a08c4296a657ca3590ee14cfd97318df95e"

  url "https://github.com/codefirst/aquaskk/releases/download/#{version}/AquaSKK-#{version}.pkg"
  name "AquaSKK"
  desc "Input method without morphological analysis"
  homepage "https://github.com/codefirst/aquaskk"

  # This uses the `GithubReleases` strategy and includes ONLY releases marked as
  # "pre-release", excluding stable releases.
  livecheck do
    url :url
    strategy :github_releases do |json, regex|
      json.map do |release|
        next unless release["prerelease"]

        match = release["tag_name"]&.match(regex)
        next if match.blank?

        match[1]
      end
    end
  end

  conflicts_with cask: "aquaskk"

  pkg "AquaSKK-#{version}.pkg"

  uninstall pkgutil: "org.codefirst.aquaskk.pkg"

  zap trash: [
    "~/Library/Application Support/AquaSKK",
    "~/Library/Preferences/jp.sourceforge.inputmethod.aquaskk.plist",
    "~/Library/Preferences/jp.sourceforge.inputmethod.aquaskk.preferences.plist",
  ]
end
