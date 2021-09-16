cask "eclipse-java" do
  version "4.21.0,2021-09:R"
  sha256 "5fb0137aff46c6d8b36615670aa86dcfc4b653b19fd1bd0d1bbeae8f1c1cf9ce"

  url "https://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/#{version.after_comma.before_colon}/#{version.after_colon}/eclipse-java-#{version.after_comma.before_colon}-#{version.after_colon}-macosx-cocoa-x86_64.dmg&r=1"
  name "Eclipse IDE for Java Developers"
  desc "Eclipse IDE for Java developers"
  homepage "https://eclipse.org/"

  livecheck do
    url "https://www.eclipse.org/downloads/packages/"
    strategy :page_match do |page|
      page.scan(/Eclipse IDE (\d+-\d+) R Packages/i).map do |release|
        version_page = Homebrew::Livecheck::Strategy.page_content("https://projects.eclipse.org/releases/#{release[0]}")[:content]
        version = version_page.scan(%r{href="/projects/eclipse/releases/(\d+(?:\.\d+)*)"}i)
        "#{version[0][0]},#{release[0]}:R"
      end
    end
  end

  # Renamed to avoid conflict with other Eclipse.
  app "Eclipse.app", target: "Eclipse Java.app"
end
