cask "eclipse-modeling" do
  version "4.18.0,2020-12:R"
  sha256 "f2c39ac1ff166901f195dc51ed867896e05d415af5a3285aaf146dd6248fd75b"

  url "https://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/#{version.after_comma.before_colon}/#{version.after_colon}/eclipse-modeling-#{version.after_comma.before_colon}-#{version.after_colon}-macosx-cocoa-x86_64.dmg&r=1"
  name "Eclipse Modeling Tools"
  homepage "https://eclipse.org/"

  livecheck do
    url "https://projects.eclipse.org/releases/"
    strategy :page_match do |page|
      page.scan(%r{href=.*projects.eclipse.org/releases/(\d+-\d+)}i).map do |release|
        version_page = Net::HTTP.get(URI.parse("https://projects.eclipse.org/releases/#{release[0]}"))
        version = version_page.scan(%r{href="/projects/eclipse/releases/(\d+(?:\.\d+)*)"}i)
        "#{version[0][0]},#{release[0]}:R"
      end
    end
  end

  # Renamed to avoid conflict with other Eclipse.
  app "Eclipse.app", target: "Eclipse Modeling.app"
end
