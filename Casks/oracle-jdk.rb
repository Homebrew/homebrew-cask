cask "oracle-jdk" do
  version "16.0.2,7:d4a915d82b4c4fbb9bde534da945d746"
  sha256 "aa046e1d2451093aa9b5c8e02aa2aa6560c523448249ff854337e63eb15861da"

  url "https://download.oracle.com/otn-pub/java/jdk/#{version.before_comma}+#{version.after_comma.before_colon}/#{version.after_colon}/jdk-#{version.before_comma}_osx-x64_bin.dmg",
      cookies: {
        "oraclelicense" => "accept-securebackup-cookie",
      }
  name "Oracle Java Standard Edition Development Kit"
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
