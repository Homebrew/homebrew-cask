cask "extraterm" do
  version "0.72.0"
  sha256 "78b2e11363f82416c19da30d39e36a6cefb1db37fbf93e29f96492fc61da7300"

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
