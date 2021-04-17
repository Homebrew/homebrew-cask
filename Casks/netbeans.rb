cask "netbeans" do
  version "12.3"
  sha256 "a34c046619b69e5b13a2618d12336b97bcb404424880fe5d0c4c10ed100da6ba"

  url "https://www-eu.apache.org/dist/netbeans/netbeans/#{version}/Apache-NetBeans-#{version}-bin-macosx.dmg"
  name "NetBeans IDE"
  desc "Development environment, tooling platform and application framework"
  homepage "https://netbeans.apache.org/download/index.html"

  livecheck do
    url "https://netbeans.org/downloads/"
    strategy :page_match
    regex(/NetBeans\s*(\d+(?:\.\d+)*)/i)
  end

  pkg "Apache NetBeans #{version}.pkg"

  uninstall pkgutil: "org.netbeans.ide.*|glassfish.*",
            delete:  "/Applications/NetBeans"

  zap trash: [
    "~/Library/Application Support/NetBeans",
    "~/Library/Caches/NetBeans",
  ]
end
