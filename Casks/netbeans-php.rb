cask "netbeans-php" do
  version "12.3"
  sha256 "a34c046619b69e5b13a2618d12336b97bcb404424880fe5d0c4c10ed100da6ba"

  url "https://downloads.apache.org/netbeans/netbeans/#{version}/Apache-NetBeans-#{version}-bin-macosx.dmg",
      verified: "downloads.apache.org/netbeans/netbeans/"
  name "NetBeans IDE for PHP"
  desc "Development environment, tooling platform and application framework"
  homepage "https://netbeans.org/"

  livecheck do
    url "https://netbeans.org/downloads/"
    strategy :page_match
    regex(/NetBeans\s*(\d+(?:\.\d+)*)/i)
  end

  pkg "Apache NetBeans #{version}.pkg"

  uninstall pkgutil: [
    "org.netbeans.ide.javaee.#{version}",
    "org.netbeans.ide.javase.#{version}",
    "org.netbeans.ide.nbide.#{version}",
    "org.netbeans.ide.php.#{version}",
    "org.netbeans.ide.webcommon.#{version}",
  ],
            delete:  "/Applications/NetBeans"
end
