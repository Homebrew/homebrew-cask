cask "oracle-jdk-javadoc" do
  version "15.0.1,9:51f4f36ad4ef43e39d0dfdbaf6549e32"
  sha256 "3d761155f111bcc16e643432c39241d97e3d7bed202e5376b2416d67b2a696e8"

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
