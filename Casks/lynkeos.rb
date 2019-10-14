cask 'lynkeos' do
  version '3.1'
  sha256 '4f2d10366211319096d37c42a2a12667c3e636ab0995dbb53a98f5806c90fd22'

  # downloads.sourceforge.net/lynkeos was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/lynkeos/lynkeos/#{version}/Lynkeos-App-#{version.dots_to_hyphens}.zip"
  appcast 'https://sourceforge.net/projects/lynkeos/rss?path=/lynkeos'
  name 'Lynkeos'
  homepage 'https://lynkeos.sourceforge.io/'

  app "Lynkeos-App-#{version.dots_to_hyphens}/Lynkeos.app"
end
