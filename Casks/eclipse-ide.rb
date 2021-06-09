cask "eclipse-ide" do
  version "4.19.0,2021-03:R"
  sha256 "5c4df846bdeec20466df2ee374421a578634cd401b709077bca4ee2305a6b38d"

  url "https://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/#{version.after_comma.before_colon}/#{version.after_colon}/eclipse-committers-#{version.after_comma.before_colon}-#{version.after_colon}-macosx-cocoa-x86_64.dmg&r=1"
  name "Eclipse IDE for Eclipse Committers"
  homepage "https://eclipse.org/"

  livecheck do
    url "https://www.eclipse.org/downloads/packages/"
    strategy :page_match do |page|
      page.scan(%r{href=.*?/downloads/packages/release/(\d+-\d+)}i).map do |release|
        require "net/http"
        version_page = Net::HTTP.get(URI.parse("https://projects.eclipse.org/releases/#{release[0]}"))
        version = version_page.scan(%r{href="/projects/eclipse/releases/(\d+(?:\.\d+)*)"}i)
        "#{version[0][0]},#{release[0]}:R"
      end
    end
  end

  app "Eclipse.app"
end
