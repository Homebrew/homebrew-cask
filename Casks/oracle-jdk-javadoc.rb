cask "oracle-jdk-javadoc" do
  version "20,36,bdc68b4b9cbc4ebcb30745c85038d91d"
  sha256 "39ac14b6caea4552777b92baf11b4afbeb05192ca2aebc8b752ff21f52b43e64"

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

  caveats do
    license "https://download.oracle.com/otndocs/jcp/java_se-#{version.major}-final-spec/license.html"
  end
end
