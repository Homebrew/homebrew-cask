cask "netbeans" do
  version "25"
  sha256 "74ba5b7f2013b7c08bb258f615918879f0f26d210af1126b36a4fa17ca871d1f"

  url "https://dlcdn.apache.org/netbeans/netbeans-installers/#{version}/Apache-NetBeans-#{version}.pkg"
  name "NetBeans IDE"
  desc "Development environment, tooling platform and application framework"
  homepage "https://netbeans.apache.org/"

  # Major releases sometimes only use the major version (13) instead of
  # major/minor (13.0).
  livecheck do
    url "https://dlcdn.apache.org/netbeans/netbeans-installers/"
    regex(%r{href=["']?v?(\d+(?:\.\d+)*)/?["' >]}i)
  end

  depends_on macos: ">= :big_sur"

  pkg "Apache-NetBeans-#{version}.pkg"

  uninstall pkgutil: [
              "org.apache.netbeans",
              "org.netbeans.ide.*|glassfish.*",
            ],
            delete:  "/Applications/NetBeans"

  zap trash: [
    "~/Library/Application Support/NetBeans",
    "~/Library/Caches/NetBeans",
  ]
end
