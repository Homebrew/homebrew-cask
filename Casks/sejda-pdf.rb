cask 'sejda-pdf' do
  version '5.0.2'
  sha256 '392b87570ca678b31a35f7549e05788da72b470c22f1933bbe9ef892045c3a9b'

  # bitbucket.org/sejdapdf/sejda-desktop-public was verified as official when first introduced to the cask
  url "https://bitbucket.org/sejdapdf/sejda-desktop-public/downloads/sejda-desktop_#{version}.dmg"
  name 'Sejda PDF Desktop'
  homepage 'https://www.sejda.com/desktop'

  app 'Sejda PDF Desktop.app'
end
