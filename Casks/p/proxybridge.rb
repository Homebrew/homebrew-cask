cask "proxybridge" do
  version "4.0.0"
  sha256 "df64a77b9bd1a6f9d41b4c7e2169dbf86c23441c6751b65a0a55c016a6253d0a"

  url "https://github.com/InterceptSuite/ProxyBridge/releases/download/v#{version}/ProxyBridge-v#{version}-Universal-Installer.pkg",
      verified: "github.com/InterceptSuite/ProxyBridge/"
  name "ProxyBridge"
  desc "Proxy client with per-application traffic routing rules"
  homepage "https://interceptsuite.com/"

  depends_on macos: :ventura

  pkg "ProxyBridge-v#{version}-Universal-Installer.pkg"

  uninstall quit:    "com.interceptsuite.ProxyBridge",
            pkgutil: "com.interceptsuite.ProxyBridge"

  zap trash: [
    "~/Library/Caches/com.interceptsuite.ProxyBridge",
    "~/Library/Containers/com.interceptsuite.ProxyBridge",
    "~/Library/Containers/com.interceptsuite.ProxyBridge.extension",
    "~/Library/Group Containers/group.com.interceptsuite.ProxyBridge",
    "~/Library/Preferences/com.interceptsuite.ProxyBridge.plist",
  ]
end
