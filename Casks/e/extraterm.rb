cask "extraterm" do
  version "0.76.1"
  sha256 "3e55b0f51e86aaba3a39d6bc990e8e277ed1102a41086deba307e55f6008100c"

  url "https://github.com/sedwards2009/extraterm/releases/download/v#{version}/ExtratermQt_#{version}.dmg",
      verified: "github.com/sedwards2009/extraterm/"
  name "extraterm"
  desc "Swiss army chainsaw of terminal emulators"
  homepage "https://extraterm.org/"

  # As of writing, upstream marks all releases on GitHub as "pre-release".
  # This should be updated to use the `GithubLatest` strategy if/when stable
  # versions become available.
  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
    strategy :github_releases do |json, regex|
      json.map do |release|
        # This omits the usual `release["prerelease"]` early return condition,
        # as we need to work with pre-release versions for now.
        next if release["draft"]

        match = release["tag_name"]&.match(regex)
        next if match.blank?

        match[1]
      end
    end
  end

  app "ExtratermQt.app"

  zap trash: [
    "~/Library/Application Support/extraterm",
    "~/Library/Preferences/com.electron.extraterm.helper.plist",
    "~/Library/Preferences/com.electron.extraterm.plist",
  ]
end
