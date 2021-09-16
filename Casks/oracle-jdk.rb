cask "oracle-jdk" do
  version "17"
  sha256 "2a7befd5f8b27194f03451e939ffe4d9fc2acc172eef27f89f924ea9ba8157a7"

  url "https://download.oracle.com/java/17/latest/jdk-17_macos-x64_bin.dmg"
  desc "JDK from Oracle"
  homepage "https://www.oracle.com/technetwork/java/javase/overview/index.html"

  livecheck do
    url "https://www.oracle.com/java/technologies/javase-jdk16-downloads.html"
    strategy :page_match do |page|
      match = page.match(%r{(\d+(?:\.\d+)*)%2B(\d+(?:\.\d+)*)/(.+)/jdk-(\d+(?:\.\d+)*)_osx-x64_bin\.dmg}i)
      "#{match[1]},#{match[2]}:#{match[3]}"
    end
  end

  depends_on macos: ">= :yosemite"

  pkg "JDK #{version.before_comma}.pkg"

  uninstall pkgutil: "com.oracle.jdk-#{version.before_comma}"

  caveats do
    license "https://www.oracle.com/technetwork/java/javase/terms/license/javase-license.html"
  end
end
