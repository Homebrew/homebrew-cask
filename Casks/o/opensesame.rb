cask "opensesame" do
  version "4.1.7,py313"
  sha256 "75483ed7a0fdb3ab0c952dff11f450c419ffa3d7542ef169ad21483e35cafc83"

  url "https://github.com/open-cogsci/OpenSesame/releases/download/release%2F#{version.csv.first}/opensesame_#{version.csv.first}#{"-#{version.csv.second}" if version.csv.second}-macos-x64-1.dmg",
      verified: "github.com/open-cogsci/OpenSesame/"
  name "OpenSesame"
  desc "Graphical experiment builder for the social sciences"
  homepage "https://osdoc.cogsci.nl/"

  # Upstream sometimes creates releases without any assets, so we check the
  # homepage, which links to the newest dmg file for the Python version that
  # upstream uses for development and testing. This saves us from having to
  # check multiple GitHub releases to find the newest version with a dmg file
  # and also ensures that we're using the file for the Python version that
  # upstream targets. GitHub releases can provide multiple dmg files targeting
  # different Python versions and the dmg file for the targeted Python version
  # seems to be uploaded first. However, if we checked GitHub releases it may be
  # technically possible for us to update to something like `1.2.3,py311` only
  # for livecheck to later surface `1.2.3,py313` as a new version. Hopefully
  # checking the homepage will continue to avoid these issues but they're worth
  # noting if/when we update this check in the future.
  livecheck do
    url :homepage
    regex(/href=.*?opensesame[._-]v?(\d+(?:\.\d+)+)(?:[._-](py\d+(?:\.\d+)*))?[^"' >]*?\.dmg/i)
    strategy :page_match do |page, regex|
      page.scan(regex).map do |match|
        match[1] ? "#{match[0]},#{match[1]}" : match[0]
      end
    end
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  app "OpenSesame.app"

  zap trash: [
    "~/.opensesame",
    "~/Library/Preferences/com.cogscinl.default.plist",
  ]
end
