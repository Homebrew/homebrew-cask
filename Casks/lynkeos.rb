cask 'lynkeos' do
  version '3.3'
  sha256 '5d5a3eca3aea628ac201f31a59b41377240db62a58f2e9c14ca172de3d0dc25a'

  # downloads.sourceforge.net/lynkeos/ was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/lynkeos/lynkeos/#{version}/Lynkeos-App-#{version.dots_to_hyphens}.zip"
  appcast 'https://sourceforge.net/projects/lynkeos/rss?path=/lynkeos'
  name 'Lynkeos'
  homepage 'https://lynkeos.sourceforge.io/'

  app "Lynkeos-App-#{version.dots_to_hyphens}/Lynkeos.app"
end
