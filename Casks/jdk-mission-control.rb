cask "jdk-mission-control" do
  version "8.0.1,02"
  sha256 "87e087129941f9d2cb4fe1a94e1ff5835cf65c5f85b2983bceb0e05a1d299d0e"

  url "https://download.java.net/java/GA/jmc#{version.major}/#{version.after_comma}/binaries/jmc-#{version.before_comma}_osx-x64.tar.gz"
  name "JDK Mission Control"
  desc "Tools to manage, monitor, profile and troubleshoot Java applications"
  homepage "https://jdk.java.net/jmc/8"

  livecheck do
    url :homepage
    strategy :page_match do |page|
      match = page.match(%r{href=.*?/(\d+)/binaries/jmc-(\d+(?:\.\d+)*)_osx-x64.tar\.gz}i)
      "#{match[2]},#{match[1]}"
    end
  end

  app "jmc-#{version.before_comma}_osx-x64/JDK Mission Control.app"

  caveats do
    depends_on_java "11"
  end
end
