cask 'mythfrontend' do
  version '0.28-52-ge6a60f7'
  sha256 '2e0c4de89d1ab91a86f5d6ea3ec0a60654412e01f54db28c679cc8e30bf62140'

  # downloads.sourceforge.net was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/mythtvformacosx/MythFrontend-#{version.major_minor}-intel-10.9-v#{version}.dmg"
  appcast 'https://sourceforge.net/projects/mythtvformacosx/rss?path=/',
          checkpoint: 'ab4861cf53ab2a9d006aec31ed89378ad242bef1199eb1864436076f3e39c583'
  name 'MythFrontend'
  homepage 'https://www.mythtv.org/'

  app 'MythFrontend.app'
end
