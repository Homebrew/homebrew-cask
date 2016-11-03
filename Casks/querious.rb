cask 'querious' do
  version '2.0_beta48'
  sha256 'ce8a446c9826428013b1e928e6c333c92ec0bc4f36c636d97aaed8809b0169d1'

  url "https://store.araelium.com/querious/downloads/versions/Querious#{version}.zip"
  appcast 'https://arweb-assets.s3.amazonaws.com/downloads/querious/prerelease-updates.xml',
          checkpoint: 'f95fff88eab5a30baf0bc25dbc23cba048d503b91d05eaa8d69079fbf4c412b8'
  name 'Querious 2'
  homepage 'http://www.araelium.com/querious/'

  app 'Querious.app'
end
