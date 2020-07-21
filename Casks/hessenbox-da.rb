cask 'hessenbox-da' do
  version :latest
  sha256 :no_check

  url 'https://hessenbox.tu-darmstadt.de/client_deployment/HESSENBOX_DA_Latest_Mac.dmg'
  name 'Hessenbox DA Mac OS Client, Hessenbox TU Darmstadt Client'
  homepage 'https://hessenbox.tu-darmstadt.de/'

  app 'HESSENBOX-DA.app'
end
