cask "aquaskk@prerelease" do
  version "4.7.9"
  sha256 "cd0da8ec67c1bfc7f96e519ff1e4413cd4e85f6022a2f86e0e1984902c1e4b78"

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
  depends_on :macos

  pkg "AquaSKK-#{version}.pkg"

  uninstall pkgutil: "org.codefirst.aquaskk.pkg"

  zap trash: [
    "~/Library/Application Support/AquaSKK",
    "~/Library/Preferences/jp.sourceforge.inputmethod.aquaskk.plist",
    "~/Library/Preferences/jp.sourceforge.inputmethod.aquaskk.preferences.plist",
  ]
end
