cask "eclipse-modeling" do
  version "4.20.0,2021-06:R"
  sha256 "b7ee6b3012b7bb1e8321977010655b3b6139ec58b822d23395216328c5c3c4d4"

  url "https://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/#{version.after_comma.before_colon}/#{version.after_colon}/eclipse-modeling-#{version.after_comma.before_colon}-#{version.after_colon}-macosx-cocoa-x86_64.dmg&r=1"
  name "Eclipse Modeling Tools"
  desc "Tools and runtimes for building model-based applications"
  homepage "https://eclipse.org/"

  livecheck do
    url "https://www.eclipse.org/downloads/packages/"
    strategy :page_match do |page|
      page.scan(%r{href=.*?/downloads/packages/release/(\d+-\d+)}i).map do |release|
        version_page = Homebrew::Livecheck::Strategy.page_content("https://projects.eclipse.org/releases/#{release[0]}")[:content]
        version = version_page.scan(%r{href="/projects/eclipse/releases/(\d+(?:\.\d+)*)"}i)
        "#{version[0][0]},#{release[0]}:R"
      end
    end
  end

  # Renamed to avoid conflict with other Eclipse.
  app "Eclipse.app", target: "Eclipse Modeling.app"
end
