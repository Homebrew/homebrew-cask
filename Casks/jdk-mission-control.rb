cask "jdk-mission-control" do
  version "8.1.0,07"
  sha256 "6719d9e9e22e3d456994e398c47b280090c2eff58dc4cb69f8b3d45713dfc29c"

  url "https://download.java.net/java/GA/jmc#{version.major}/#{version.csv.second}/binaries/jmc-#{version.csv.first}_osx-x64.tar.gz"
  name "JDK Mission Control"
  desc "Tools to manage, monitor, profile and troubleshoot Java applications"
  homepage "https://jdk.java.net/jmc/8"

  livecheck do
    url :homepage
    strategy :page_match do |page|
      match = page.match(%r{href=.*?/(\d+)/binaries/jmc-(\d+(?:\.\d+)*)_osx-x64.tar\.gz}i)
      next if match.blank?

      "#{match[2]},#{match[1]}"
    end
  end

  app "jmc-#{version.csv.first}_osx-x64/JDK Mission Control.app"

  caveats do
    depends_on_java "11"
  end
end
