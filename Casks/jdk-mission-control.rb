cask "jdk-mission-control" do
  version "8.0.0,13"
  sha256 "3eb380e7ae241851cebeaf636b0de063d7a4a9585265c25ce1b1bfba8d56b100"

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
