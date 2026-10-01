cask "enpass" do
  version "6.12.7.2787"
  sha256 "f7d53fec58262bb68749b2a78a4b60f125e72fba6f5ff433ce8da200ebead40f"

  url "https://dl.enpass.io/stable/mac/package/#{version}/Enpass.pkg"
  name "Enpass"
  desc "Password and credentials manager"
  homepage "https://www.enpass.io/"

  livecheck do
    url "https://www.enpass.io/download/macos/website/stable",
        user_agent: :browser
    strategy :header_match
  end

  depends_on :macos

  pkg "Enpass.pkg"

  uninstall pkgutil: "in.sinew.Enpass-Desktop.App"

  zap trash: [
    "~/Library/Caches/com.plausiblelabs.crashreporter.data/in.sinew.Enpass-Desktop",
    "~/Library/Caches/in.sinew.Enpass-Desktop",
    "~/Library/Preferences/in.sinew.Enpass-Desktop.plist",
    "~/Library/Saved Application State/in.sinew.Enpass-Desktop.savedState",
  ]
end
