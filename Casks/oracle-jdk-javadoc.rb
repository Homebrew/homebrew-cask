cask "oracle-jdk-javadoc" do
  version "17.0.2,8,dfd4a8d0985749f896bed50d7138ee7f"
  sha256 "d25b34eb17053bf23a7a4a82ac2ab7a85b5d53a1109d6561e302761e23f33895"

  url "https://download.oracle.com/otn_software/java/jdk/#{version.csv.first}+#{version.csv.second}/#{version.csv.third}/jdk-#{version.csv.first}_doc-all.zip",
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
      next if match.blank?

      "#{match[1]},#{match[2]},#{match[3]}"
    end
  end

  artifact "docs", target: "/Library/Java/JavaVirtualMachines/jdk-#{version.csv.first}.jdk/Contents/Home/docs"

  uninstall rmdir: "/Library/Java/JavaVirtualMachines/jdk-#{version.csv.first}.jdk"

  caveats do
    license "https://download.oracle.com/otndocs/jcp/java_se-#{version.major}-final-spec/license.html"
  end
end
