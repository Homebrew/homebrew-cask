cask "oracle-jdk" do
  version "15.0.2,7:0d1cfde4252546c6931946de8db48ee2"
  sha256 "106313be17b977df3da05a168b9449b41fd52858a3d18cc3fac5c8d9279d06a8"

  url "https://download.oracle.com/otn-pub/java/jdk/#{version.before_comma}+#{version.after_comma.before_colon}/#{version.after_colon}/jdk-#{version.before_comma}_osx-x64_bin.dmg",
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
