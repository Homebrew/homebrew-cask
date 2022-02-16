cask "eclipse-ide" do
  arch = Hardware::CPU.intel? ? "x86_64" : "aarch64"

  version "4.22.0,2021-12"

  if Hardware::CPU.intel?
    sha256 "a3ef73cb7fb40cc1a8dc424996850f7eb6b207d8e67579b4260a9ce196241e2c"
  else
    sha256 "97c718bc5c5121525cef86dc87f7931bc2abdf28d165ffdd28cfffb3f79c46ba"
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
