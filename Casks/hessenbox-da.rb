cask "hessenbox-da" do
  version :latest
  sha256 :no_check

  url "https://hessenbox.tu-darmstadt.de/client_deployment/HESSENBOX_DA_Latest_Mac.dmg"
  name "Hessenbox DA"
  homepage "https://www.hrz.tu-darmstadt.de/speicherplatz_datensicherung_und_server/hessenbox_da/index.en.jsp"

  app "HESSENBOX-DA.app"

  zap trash: "~/.PowerFolder"
end
