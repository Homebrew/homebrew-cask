cask "eclipse-cpp" do
  version "4.19.0,2021-03:R"
  sha256 "4eb035478fb52c1ae3ae26322dc9ec0967a18155283fb44afebee5f12189893a"

  url "https://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/#{version.after_comma.before_colon}/#{version.after_colon}/eclipse-cpp-#{version.after_comma.before_colon}-#{version.after_colon}-macosx-cocoa-x86_64.dmg&r=1"
  name "Eclipse IDE for C/C++ Developers"
  homepage "https://eclipse.org/"

  livecheck do
    url "https://www.eclipse.org/downloads/packages/"
    strategy :page_match do |page|
      page.scan(%r{Eclipse IDE (\d+-\d+) R Packages}i).map do |release|
        require "net/http"
        version_page = Net::HTTP.get(URI.parse("https://projects.eclipse.org/releases/#{release[0]}"))
        version = version_page.scan(%r{href="/projects/eclipse/releases/(\d+(?:\.\d+)*)"}i)
        "#{version[0][0]},#{release[0]}:R"
      end
    end
  end

  # Renamed to avoid conflict with other Eclipse.
  app "Eclipse.app", target: "Eclipse CPP.app"
end
