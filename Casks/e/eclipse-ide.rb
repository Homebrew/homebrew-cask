cask "eclipse-ide" do
  arch arm: "aarch64", intel: "x86_64"

  version "4.34.0,2024-12"
  sha256 arm:   "b5faba5a6fb8f740007c324e2aa2ad7f505a427b07ed2edbbe82d0bc0d7d05a3",
         intel: "a54495cda85934bb1e4db3db69de53ceade7ea7ca240b3b62bbbc0cca52f9314"

  url "https://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/#{version.csv.second}/R/eclipse-committers-#{version.csv.second}-R-macosx-cocoa-#{arch}.dmg&r=1"
  name "Eclipse IDE for Eclipse Committers"
  desc "Eclipse integrated development environment"
  homepage "https://eclipse.org/"

  livecheck do
    url "https://www.eclipse.org/downloads/packages/"
    regex(/href=.*?eclipse-committers-(\d+-\d+)-R-mac/i)
    strategy :page_match do |page, regex|
      date = page[regex, 1]
      next if date.blank?

      version_page = Homebrew::Livecheck::Strategy.page_content("https://projects.eclipse.org/releases/#{date}")[:content]
      next if version_page.blank?

      version = version_page[%r{href=["']?/projects/technology\.packaging/releases/v?(\d+(?:\.\d+)+)/?["']?}i, 1]
      next if version.blank?

      "#{version},#{date}"
    end
  end

  app "Eclipse.app"

  zap trash: "~/Library/Preferences/epp.package.committers.plist"
end
