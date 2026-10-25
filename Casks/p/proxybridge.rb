cask "proxybridge" do
  version "4.1.0,4.1.0_MacOS"
  sha256 "c375fff53349f009e7bedacb47528642041776f859f58972bfad02b190ef7dec"

  url "https://github.com/InterceptSuite/ProxyBridge/releases/download/v#{version.csv.second || version.csv.first}/ProxyBridge-v#{version.csv.first}-Universal-Installer.pkg"
  name "ProxyBridge"
  desc "Proxy client with per-application traffic routing rules"
  homepage "https://proxybridge.interceptsuite.com/"

  # Upstream may not provide all OS-specific assets for each release. There can
  # be multiple OS-specific releases for a given version, with a notable amount
  # of time in between. We check the JSON data that the first-party download
  # page uses to render download links client-side, so we don't have to check
  # multiple GitHub releases to identify the latest version for macOS.
  livecheck do
    url "https://download.interceptsuite.com/proxybridge.json"
    regex(%r{/download/v?([^/]+)/}i)
    strategy :json do |json|
      ver = json.dig("macos", "version")
      next unless ver

      tag = json.dig("macos", "download")&.[](regex, 1)
      next unless tag

      (tag == ver) ? ver : "#{ver},#{tag}"
    end
  end

  depends_on macos: :ventura

  pkg "ProxyBridge-v#{version.csv.first}-Universal-Installer.pkg"

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
