cask "eobcanka" do
  version "3.4.2"
  sha256 "a74d4205c0faabc8866165a42ac5370d5fdabf632f541a6e80e787b889f6e598"

  url "https://info.identitaobcana.cz/download/eObcanka.dmg"
  name "eObčanka"
  desc "Czech national identity card app"
  homepage "https://info.identitaobcana.cz/eop/InstalacemacOS.aspx"

  livecheck do
    url "https://info.identitaobcana.cz/eop/ZmenySWMacOS.aspx"
    regex(%r{<h3>Verze\s(\d+(?:\.\d+)+)</h3>}i)
  end

  depends_on macos: ">= :mojave"

  pkg "eObcanka.pkg"

  uninstall quit:    [
              "com.monetplus.cardmanager",
              "cz.monetplus.eOb--anka-Identifikace",
              "cz.monetplus.eOP.Eop2v1CzeTokenApp",
              "cz.monetplus.eOP.EopCzeTokenApp",
            ],
            pkgutil: [
              "com.Monet.pkg.CryptoPlusEOP",
              "com.Monet.pkg.CryptoPlusEOPCTK",
            ]

  zap trash: [
    "~/.config/eObcanka/",
    "~/.eObcanka_logs/",
  ]
end
