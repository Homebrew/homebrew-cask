cask "extraterm" do
  version "0.71.1"
  sha256 "e398ba5e381bf91dab1a37a687d1e6d388eac5e7863ff110db1233f3994a6a99"

  url "https://github.com/sedwards2009/extraterm/releases/download/v#{version}/ExtratermQt_#{version}.dmg",
      verified: "github.com/sedwards2009/extraterm/"
  name "extraterm"
  desc "Swiss army chainsaw of terminal emulators"
  homepage "https://extraterm.org/"

  # As of writing, upstream marks all releases on GitHub as "pre-release".
  # This should be updated to use the `GithubLatest` strategy if/when stable
  # versions become available.
  livecheck do
    url "https://github.com/sedwards2009/extraterm/releases"
    regex(%r{href=["']?[^"' >]*?/tag/v?(\d+(?:\.\d+)+)["' >]}i)
    strategy :page_match
  end

  app "ExtratermQt.app"

  zap trash: [
    "~/Library/Application Support/extraterm",
    "~/Library/Preferences/com.electron.extraterm.helper.plist",
    "~/Library/Preferences/com.electron.extraterm.plist",
  ]
end
