cask "oracle-jdk-javadoc" do
  version "17,35:0d483333a00540d886896bac774ff48b"
  sha256 "0b6870176449abdedae5c4a98ad69684f68831d02900b9b6ccea54213ff2cca7"

  url "https://download.oracle.com/otn-pub/java/jdk/#{version.before_comma}+#{version.after_comma.before_colon}/#{version.after_colon}/jdk-#{version.before_comma}_doc-all.zip",
      cookies: {
        "oraclelicense" => "accept-securebackup-cookie",
      }
  name "Oracle Java Standard Edition Development Kit Documentation"
  desc "Documentation for the Oracle JDK"
  homepage "https://www.oracle.com/java/technologies/downloads/"

  livecheck do
    url "https://www.oracle.com/java/technologies/javase-jdk#{version.major}-doc-downloads.html"
    strategy :page_match do |page|
      match = page.match(%r{(\d+(?:\.\d+)*)\+(\d+(?:\.\d+)*)/(.+)/jdk-(\d+(?:\.\d+)*)_doc-all\.zip}i)
      "#{match[1]},#{match[2]}:#{match[3]}"
    end
  end

  artifact "docs", target: "/Library/Java/JavaVirtualMachines/jdk-#{version.before_comma}.jdk/Contents/Home/docs"

  uninstall rmdir: "/Library/Java/JavaVirtualMachines/jdk-#{version.before_comma}.jdk"

  caveats do
    license "https://download.oracle.com/otndocs/jcp/java_se-#{version.major}-final-spec/license.html"
  end
end
