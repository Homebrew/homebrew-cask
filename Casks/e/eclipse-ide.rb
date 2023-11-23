cask "eclipse-ide" do
  arch arm: "aarch64", intel: "x86_64"

  version "4.29.0,2023-09"
  sha256 arm:   "463f89c7e25196c0935235cc025bcc3621a6a16d1378d98ea1c2847bb5e14cdb",
         intel: "1661cc5d8128b392d892aa315819d9bcaa7a59fb0d4e468a48eade8f5ea4b66a"

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
