cask "oracle-jdk-javadoc" do
  version "16.0.2,7:d4a915d82b4c4fbb9bde534da945d746"
  sha256 "7cd96f9aa11d9e1a1adbee3e941a78e899bc9079370e4c12c106761d3df80f82"

  url "https://download.oracle.com/otn-pub/java/jdk/#{version.before_comma}+#{version.after_comma.before_colon}/#{version.after_colon}/jdk-#{version.before_comma}_doc-all.zip",
      cookies: {
        "oraclelicense" => "accept-securebackup-cookie",
      }
  name "Oracle Java Standard Edition Development Kit Documentation"
  desc "Documentation for the Oracle JDK"
  homepage "https://www.oracle.com/technetwork/java/javase/documentation/index.html"

  livecheck do
    url "https://www.oracle.com/java/technologies/javase-jdk16-doc-downloads.html"
    strategy :page_match do |page|
      match = page.match(%r{(\d+(?:\.\d+)*)%2B(\d+(?:\.\d+)*)/(.+)/jdk-(\d+(?:\.\d+)*)_doc-all\.zip}i)
      "#{match[1]},#{match[2]}:#{match[3]}"
    end
  end

  artifact "docs", target: "/Library/Java/JavaVirtualMachines/jdk-#{version.before_comma}.jdk/Contents/Home/docs"

  uninstall rmdir: "/Library/Java/JavaVirtualMachines/jdk-#{version.before_comma}.jdk"

  caveats do
    license "https://www.oracle.com/technetwork/java/javase/terms/license/index.html"
  end
end
