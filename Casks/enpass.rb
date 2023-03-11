cask "enpass" do
  version "6.8.5.1259"
  sha256 "12c17451dd9b952fc2d1f9424c2b4cd90342ec2a6e3ecd0fd4e5e3737eb7d486"

  url "https://dl.enpass.io/stable/mac/package/#{version}/Enpass.pkg"
  name "Enpass"
  desc "Password and credentials mananger"
  homepage "https://www.enpass.io/"

  livecheck do
    url "https://www.enpass.io/downloads/"
    regex(%r{href=.*?/(\d+(?:\.\d+)+)/Enpass\.pkg}i)
  end

  depends_on macos: ">= :sierra"

  pkg "Enpass.pkg"

  uninstall pkgutil: "in.sinew.Enpass-Desktop.App"

  zap trash: [
    "~/Library/Caches/com.plausiblelabs.crashreporter.data/in.sinew.Enpass-Desktop",
    "~/Library/Caches/in.sinew.Enpass-Desktop",
    "~/Library/Preferences/in.sinew.Enpass-Desktop.plist",
    "~/Library/Saved Application State/in.sinew.Enpass-Desktop.savedState",
  ]
end
