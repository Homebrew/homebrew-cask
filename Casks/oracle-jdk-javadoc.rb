cask "oracle-jdk-javadoc" do
  version "16.0.1,9:7147401fd7354114ac51ef3e1328291f"
  sha256 "4e3d5270ebe36093c856d6eb321e86f7a0526afc7b144aa45218e6f8faf75b4e"

  url "https://download.oracle.com/otn-pub/java/jdk/#{version.before_comma}+#{version.after_comma.before_colon}/#{version.after_colon}/jdk-#{version.before_comma}_doc-all.zip",
      cookies: {
        "oraclelicense" => "accept-securebackup-cookie",
      }
  name "Oracle Java Standard Edition Development Kit Documentation"
  homepage "https://www.oracle.com/technetwork/java/javase/documentation/index.html"

  artifact "docs", target: "/Library/Java/JavaVirtualMachines/jdk-#{version.before_comma}.jdk/Contents/Home/docs"

  uninstall rmdir: "/Library/Java/JavaVirtualMachines/jdk-#{version.before_comma}.jdk"

  caveats do
    license "https://www.oracle.com/technetwork/java/javase/terms/license/index.html"
  end
end
