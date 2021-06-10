cask "eclipse-installer" do
  version "4.19.0,2021-03:R"
  sha256 "7c7aec2b57c4b498fc1827391d9cf740b91d05089da2f3e28dc298b86b2d6369"

  url "https://eclipse.org/downloads/download.php?file=/oomph/epp/#{version.after_comma.before_colon}/#{version.after_colon}/eclipse-inst-mac64.tar.gz&r=1"
  name "Eclipse Installer"
  name "Eclipse IDE installer"
  homepage "https://eclipse.org/"

  livecheck do
    url "https://www.eclipse.org/downloads/packages/"
    strategy :page_match do |page|
      page.scan(/Eclipse IDE (\d+-\d+) R Packages/i).map do |release|
        require "net/http"
        version_page = Net::HTTP.get(URI.parse("https://projects.eclipse.org/releases/#{release[0]}"))
        version = version_page.scan(%r{href="/projects/eclipse/releases/(\d+(?:\.\d+)*)"}i)
        "#{version[0][0]},#{release[0]}:R"
      end
    end
  end

  app "Eclipse Installer.app"

  caveats do
    depends_on_java
  end
end
