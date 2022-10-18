cask "eclipse-ide" do
  arch arm: "aarch64", intel: "x86_64"

  version "4.25.0,2022-09"
  sha256 arm:   "f8f50b0aed558dc119dc2aacab2ac1bec049d95ac986a7287509a1f8456a89c5",
         intel: "8976f14b108834dab5d4ccc85d8f57cee041800d307eaa93d7569e5e19c5440c"

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
