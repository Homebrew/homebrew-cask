cask "eclipse-ide" do
  arch arm: "aarch64", intel: "x86_64"

  version "4.24.0,2022-06"
  sha256 arm:   "aafc3b9d70aa5d4c0174a9e169645c9617704991be50f65358975d06e30a9968",
         intel: "3488dc593a7e0b5dd80a313fbf84a6679b5927d00cd7ccad292fa202e3892ef5"

  url "https://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/#{version.csv.second}/R/eclipse-committers-#{version.csv.second}-R-macosx-cocoa-#{arch}.dmg&r=1"
  name "Eclipse IDE for Eclipse Committers"
  desc "Eclipse integrated development environment"
  homepage "https://eclipse.org/"

  livecheck do
    url "https://www.eclipse.org/downloads/packages/"
    strategy :page_match do |page|
      page.scan(/Eclipse IDE (\d+-\d+) R Packages/i).map do |release|
        version_page = Homebrew::Livecheck::Strategy.page_content("https://projects.eclipse.org/releases/#{release[0]}")[:content]
        version = version_page.scan(%r{href="/projects/eclipse/releases/(\d+(?:\.\d+)*)"}i)
        "#{version[0][0]},#{release[0]}"
      end
    end
  end

  app "Eclipse.app"
end
