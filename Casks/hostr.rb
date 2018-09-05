cask 'hostr' do
  version '0.8.0'
  sha256 '89e8b6a4d0168fb05520ff9ac1f69d378dade59a883034aaa549398c039faeed'

  url "https://hostr.co/apps/mac/Hostr-#{version}.zip"
  appcast 'https://hostr.co/updaters/mac.xml'
  name 'Hostr'
  homepage 'https://hostr.co/'

  app 'Hostr.app'
end
