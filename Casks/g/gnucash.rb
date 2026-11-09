cask "gnucash" do
  arch arm: "Arm", intel: "Intel"

  version "5.17-1"
  sha256 arm:   "adbc91d6d69a297c1c599ad2849303a06c01310130d355473c0700f80dd2eb32",
         intel: "56f13c494bca3cd38f7bc1974158d08ddb12e03e877a1cc1fd11a9bbb4ba8c1b"

  url "https://github.com/Gnucash/gnucash/releases/download/#{version.hyphens_to_dots.major_minor}/Gnucash-#{arch}-#{version}.dmg"
  name "GnuCash"
  desc "Double-entry accounting program"
  homepage "https://www.gnucash.org/"

  livecheck do
    url :url
    regex(/^Gnucash-#{arch}[._-]v?(\d+(?:[.-]\d+)+)\.dmg$/i)
    strategy :github_latest do |json, regex|
      json["assets"]&.map do |asset|
        match = asset["name"]&.match(regex)
        next if match.blank?

        match[1]
      end
    end
  end

  depends_on :macos

  app "Gnucash.app"

  zap trash: [
    "~/Library/Application Support/Gnucash",
    "~/Library/Preferences/org.gnucash.Gnucash.plist",
    "~/Library/Saved Application State/org.gnucash.Gnucash.savedState",
  ]
end
