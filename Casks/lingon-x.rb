cask :v1 => 'lingon-x' do
  version :latest
  sha256 :no_check

  if MacOS.release <= :mavericks
    url 'https://www.peterborgapps.com/downloads/LingonX.zip'
    appcast 'https://www.peterborgapps.com/updates/lingonx2-appcast.xml',
            sha256 => 'a509f4c6a8596bd10c90f4d750ab2c81098360f82eac7a3744066c23becf4972'
  else
    url 'https://www.peterborgapps.com/downloads/LingonX2.zip'
    appcast 'https://www.peterborgapps.com/updates/lingonx2-appcast.xml',
          sha256 => '19fb2fceb6936bd26e5997b49abb8ec0dad62563015654319c79422572734c13'
  end
  name 'Lingon X'
  homepage 'https://www.peterborgapps.com/lingon/'
  license :commercial

  depends_on :macos => '>= :mountain_lion'

  app 'Lingon X.app'
end
