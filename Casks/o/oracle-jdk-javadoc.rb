cask "oracle-jdk-javadoc" do
  version "20.0.2,9,6e380f22cbe7469fa75fb448bd903d8e"
  sha256 "7d41ca5845dd71d20ae95968773bed4c1f652880d11048aef1f482e7b69cfc8c"

  url "https://download.oracle.com/otn_software/java/jdk/#{version.csv.first}+#{version.csv.second}/#{version.csv.third}/jdk-#{version.csv.first}_doc-all.zip",
      cookies: {
        "oraclelicense" => "accept-securebackup-cookie",
      }
  name "Oracle Java Standard Edition Development Kit Documentation"
  desc "Documentation for the Oracle JDK"
  homepage "https://www.oracle.com/java/technologies/downloads/"

  livecheck do
    url "https://www.oracle.com/java/technologies/javase-jdk#{version.major}-doc-downloads.html"
    regex(%r{/(\d+(?:\.\d+)*)(?:\+|%2B)(\d+(?:\.\d+)*)/(\h+)/jdk[._-]v?(\d+(?:\.\d+)*)_doc-all\.zip}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[0]},#{match[1]},#{match[2]}" }
    end
  end

  artifact "docs", target: "/Library/Java/JavaVirtualMachines/jdk-#{version.csv.first}.jdk/Contents/Home/docs"

  uninstall rmdir: "/Library/Java/JavaVirtualMachines/jdk-#{version.csv.first}.jdk"

  # No zap stanza required

  caveats do
    license "https://download.oracle.com/otndocs/jcp/java_se-#{version.major}-final-spec/license.html"
  end
end
