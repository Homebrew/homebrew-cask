cask "oracle-jdk-javadoc" do
  version "15,36:779bf45e88a44cbd9ea6621d33e33db1"
  sha256 "ecf31c3f366069300517999971982fba900effec6999931cb587e97aaaa0052a"

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
