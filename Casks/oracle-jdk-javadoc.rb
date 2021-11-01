cask "oracle-jdk-javadoc" do
  version "17.0.1,12:2a2082e5a09d4267845be086888add4f"
  sha256 "126a130be9a45d3f079d462c0b2ece8bcef7d422d252d06d1c8ca37c835e7cf8"

  url "https://download.oracle.com/otn_software/java/jdk/#{version.before_comma}+#{version.after_comma.before_colon}/#{version.after_colon}/jdk-#{version.before_comma}_doc-all.zip",
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

      "#{match[1]},#{match[2]}:#{match[3]}"
    end
  end

  artifact "docs", target: "/Library/Java/JavaVirtualMachines/jdk-#{version.before_comma}.jdk/Contents/Home/docs"

  uninstall rmdir: "/Library/Java/JavaVirtualMachines/jdk-#{version.before_comma}.jdk"

  caveats do
    license "https://download.oracle.com/otndocs/jcp/java_se-#{version.major}-final-spec/license.html"
  end
end
