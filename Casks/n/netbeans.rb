cask "netbeans" do
  arch arm: "arm64", intel: "x86_64"

  version "32"
  sha256 arm:   "8f87398d8076d664d2dddeb26c25cc7e4267d1cf1aca5116fa9a72cede96ed99",
         intel: "a751bbfe82332d82182cd6d0b260f487d8973ecd1b73347d29f0bf7688b8c94e"

  url "https://github.com/Friends-of-Apache-NetBeans/netbeans-installers/releases/download/nb#{version}/Apache-NetBeans-#{version}-#{arch}.pkg"
  name "NetBeans IDE"
  desc "Development environment, tooling platform and application framework"
  homepage "https://netbeans.apache.org/"

  livecheck do
    url :url
    regex(/^nb(\d+(?:-zulu-?\d+)?)/i)
    strategy :github_latest
  end

  depends_on :macos

  pkg "Apache-NetBeans-#{version}-#{arch}.pkg"

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
