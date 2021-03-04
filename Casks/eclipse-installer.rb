cask "eclipse-installer" do
  version "4.18.0,2020-12:R"
  sha256 "43f09d0b45484676ebe4eca88c52ea001f63efd2576ae55f71e0fe91c2fd3cb4"

  url "https://eclipse.org/downloads/download.php?file=/oomph/epp/#{version.after_comma.before_colon}/#{version.after_colon}/eclipse-inst-mac64.tar.gz&r=1"
  name "Eclipse Installer"
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

  app "Eclipse Installer.app"

  caveats do
    depends_on_java
  end
end
