cask "jdk-mission-control" do
  version "8.2.0,06"
  sha256 "2b60ede6015701794617af06ec1efcd7487a5614e36b6b5cab3e071d882fbaa2"

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
