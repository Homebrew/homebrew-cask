cask "eobcanka" do
  version "3.4.0"
  sha256 :no_check

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
              "cz.monetplus.eOP.Eop2v1CzeTokenApp",
              "cz.monetplus.eOP.EopCzeTokenApp",
              "com.monetplus.cardmanager",
              "cz.monetplus.eOb--anka-Identifikace",
            ],
            pkgutil: [
              "com.Monet.pkg.CryptoPlusEOPCTK",
              "com.Monet.pkg.CryptoPlusEOP",
            ]
end
