cask "oracle-jdk8" do
  version "8u,261:a4634525489241b9a9e1aa73d9e118e6"
  
  sha256 "00482257bc26974da9cb7070e01366e99234e1a853445b328a3aa39b53af2492"
  url "https://download.oracle.com/otn/java/jdk/#{version.before_comma}#{version.after_comma.before_colon}-b12/#{version.after_colon}/jdk-#{version.before_comma}#{version.after_comma.before_colon}-macosx-x64.dmg",
      cookies: {
        "oraclelicense" => "accept-securebackup-cookie",
      }
  name "Oracle Java Standard Edition Development Kit"
  homepage "https://www.oracle.com/technetwork/java/javase/overview/index.html"

  depends_on macos: ">= :yosemite"

  pkg "JDK #{version.before_comma}.pkg"

  uninstall pkgutil: "com.oracle.jdk-#{version.before_comma}"

  caveats do
    license "https://www.oracle.com/technetwork/java/javase/terms/license/javase-license.html"
  end
end
