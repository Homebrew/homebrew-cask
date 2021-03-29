cask "eclipse-platform" do
  version "4.19.0,2021-03:R"
  sha256 "2c80ef71f6b171393667f5b0dfde1bc15a7ef6a45e7175ddba5809f475777ce0"

  url "https://www.eclipse.org/downloads/download.php?file=/eclipse/downloads/drops#{version.major}/R-#{version.before_comma}-#{version.after_comma}/eclipse-SDK-#{version.before_comma}-macosx-cocoa-x86_64.dmg&r=1"
  name "Eclipse SDK"
  homepage "https://eclipse.org/"

  livecheck do
    url "https://www.eclipse.org/downloads/packages/"
    strategy :page_match do |page|
      page.scan(%r{href="/downloads/packages/release/(\d+-\d+)"}i).map do |release|
        version_page = Net::HTTP.get(URI.parse("https://projects.eclipse.org/releases/#{release[0]}"))
        version = version_page.scan(%r{href="/projects/eclipse/releases/(\d+(?:\.\d+)*)"}i)
        "#{version[0][0]},#{release[0]}:R"
      end
    end
  end

  # Renamed to avoid conflict with other Eclipse.
  app "Eclipse.app", target: "Eclipse Platform.app"
end
