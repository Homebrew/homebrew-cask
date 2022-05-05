cask "eclipse-ide" do
  arch = Hardware::CPU.intel? ? "x86_64" : "aarch64"

  version "4.23.0,2022-03"

  if Hardware::CPU.intel?
    sha256 "bfc5c686de994939f580343111c4d76382452e3aaf918ae93e5536bb0c6ced41"
  else
    sha256 "3fdefa5ae3f023b53b5d7ca8d065ca31b20226202d1bcaf68f722fb699e0ef27"
  end

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
