cask "netbeans" do
  arch arm: "arm64", intel: "x86_64"

  version "31"
  sha256 arm:   "9592fb7e416d433c11c1cdc2f0e33ae1e526a92e1f85172e2a25bdc7a107c3bf",
         intel: "00182b85b77c24b37c63092b75bbb9c06c7eded62fbe582d5f6ffb51b3411099"

  url "https://github.com/Friends-of-Apache-NetBeans/netbeans-installers/releases/download/nb#{version}/Apache-NetBeans-#{version}-#{arch}.pkg"
  name "NetBeans IDE"
  desc "Development environment, tooling platform and application framework"
  homepage "https://netbeans.apache.org/"

  livecheck do
    url :url
    regex(/^nb(\d+(?:-zulu-?\d+)?)/i)
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
