cask 'mojibar' do
  version '2.3.2'
  sha256 'd92546c27155846a826cacace94fa3b20ab754079d985a06d05c5a278202a4b7'

  url "https://github.com/muan/mojibar/releases/download/#{version}/mojibar.zip"
  appcast 'https://github.com/muan/mojibar/releases.atom',
          checkpoint: '4aed1bf5a60456b1ff68d3b714027ea75ffeaff45074dd30be401b30de8852f5'
  name 'Mojibar'
  homepage 'https://github.com/muan/mojibar'

  app 'Mojibar-darwin-x64/Mojibar.app'
end
