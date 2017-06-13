cask 'sejda-pdf-desktop' do
  version '2.5.9'
  sha256 '3abb670a1013df9292ef70cf11ec0ab3016e609143a458b0f478c673757e6867'

  # bitbucket.org/sejdapdf/sejda-desktop-public was verified as official when first introduced to the cask
  url "https://bitbucket.org/sejdapdf/sejda-desktop-public/downloads/sejda-desktop_#{version}.dmg"
  name 'Sejda PDF Desktop'
  homepage 'https://www.sejda.com/desktop'

  app 'Sejda PDF Desktop.app'
end
