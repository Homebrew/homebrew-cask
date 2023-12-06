cask "eclipse-ide" do
  arch arm: "aarch64", intel: "x86_64"

  version "4.30.0,2023-12"
  sha256 arm:   "a0a65dac9f14f56e4342372e35692ce6d3aafe0e36927e247ac22cadc9fc394d",
         intel: "fe25b4f32e89b3b1f653d936fb17c2d6a6ff2e662d062a1d645ca1d37c3eff8c"

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
