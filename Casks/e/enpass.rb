cask "enpass" do
  version "6.9.4.1629"
  sha256 "74b43a2ef7a423bad4138556c458906a5ed571a9f310efcb5cad52e923dc456d"

  url "https://dl.enpass.io/stable/mac/package/#{version}/Enpass.pkg"
  name "Enpass"
  desc "Password and credentials manager"
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
