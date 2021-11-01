cask "netbeans" do
  version "12.5"
  sha256 "012d684899d19102050e64991f8e90e22f60545f954c32638a14bf1e4c8cfb51"

  url "https://www-eu.apache.org/dist/netbeans/netbeans/#{version}/Apache-NetBeans-#{version}-bin-macosx.dmg"
  name "NetBeans IDE"
  desc "Development environment, tooling platform and application framework"
  homepage "https://netbeans.apache.org/"

  livecheck do
    url "https://netbeans.apache.org/download/index.html"
    regex(/NetBeans\s*v?(\d+(?:\.\d+)+)/i)
  end

  pkg "Apache NetBeans #{version}.pkg"

  uninstall pkgutil: "org.netbeans.ide.*|glassfish.*",
            delete:  "/Applications/NetBeans"

  zap trash: [
    "~/Library/Application Support/NetBeans",
    "~/Library/Caches/NetBeans",
  ]
end
