cask "enpass" do
  version "6.12.8.2837"
  sha256 "b3f4f96a925bf874132135b517a160db6d2281ea53fb2f8af95a7aeb86597d92"

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
