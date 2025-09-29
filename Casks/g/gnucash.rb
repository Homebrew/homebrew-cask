cask "gnucash" do
  arch arm: "Arm", intel: "Intel"

  version "5.13-1"
  sha256 arm:   "bafe4a5595ff5a17bbf8b5be6a03dc56a5098652f1be03b249bc0d83bfaf0740",
         intel: "d24fad097f1abf237975bf04cceec6b65a6afeb75e24263fa337eae779681ebf"

  url "https://github.com/Gnucash/gnucash/releases/download/#{version.hyphens_to_dots.major_minor}/Gnucash-#{arch}-#{version}.dmg",
      verified: "github.com/Gnucash/gnucash/"
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

  app "Gnucash.app"

  zap trash: [
    "~/Library/Application Support/Gnucash",
    "~/Library/Preferences/org.gnucash.Gnucash.plist",
    "~/Library/Saved Application State/org.gnucash.Gnucash.savedState",
  ]
end
