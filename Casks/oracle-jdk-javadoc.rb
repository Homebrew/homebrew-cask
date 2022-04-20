cask "oracle-jdk-javadoc" do
  version "18.0.1,10,3f48cabb83014f9fab465e280ccf630b"
  sha256 "4035fc543a1bcf8aa7cd8a53e1b5fdba1080b19f965fec74a8020a5c42bbd169"

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
