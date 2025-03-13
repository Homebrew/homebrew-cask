cask "eclipse-ide" do
  arch arm: "aarch64", intel: "x86_64"

  version "4.35.0,2025-03"
  sha256 arm:   "256a425f65baac72ac8513df52779724bad19ddde98f8bc59c0426aeda4072b3",
         intel: "f65b920e23adc1274fc76c8835143cbb7048cc27c503d5eed8d989f692880a9b"

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
