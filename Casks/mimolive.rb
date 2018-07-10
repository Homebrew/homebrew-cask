cask 'mimolive' do
  version '4.2-'
  sha256 '9862bcca139bc0854d483b39aa6e319ae45e895f53012104fa90c78f72dba528'

  url "https://cdn.boinx.com/software/mimolive/Boinx_mimoLive_#{version}.app.zip"
  appcast 'https://boinx.com/d/connect/histories/mimolive'
  name 'mimoLive'
  homepage 'https://boinx.com/mimolive/'

  depends_on macos: '>= :el_capitan'

  app 'mimoLive.app'
end
