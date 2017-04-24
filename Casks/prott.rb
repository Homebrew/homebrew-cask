cask 'prott' do
  version '1.0.1'
  sha256 'bd03b75cff0ae35cd636853838d932870f27600783b7e41f0f8110f8246c80d9'

  url 'https://dl.prottapp.com/apps/prott.dmg'
  appcast 'https://dl.prottapp.com/apps/appcast.xml',
          checkpoint: 'e348ca40d19d94c2376bda86a421feaa7e56e50fc211e3c4a600295d183e1529'
  name 'Prott'
  homepage 'https://prottapp.com/'

  app 'Prott.app'
end
