cask 'meta' do
  version '1.9.5'
  sha256 '0d7a5e08a20a5f6911f1d195719a20d287ce129ba824b2216fc9d18d9f626e21'

  url "https://www.nightbirdsevolve.com/meta/updates/bin/Meta%20#{version}.zip"
  appcast 'https://www.nightbirdsevolve.com/meta/updates/'
  name 'Meta'
  homepage 'https://www.nightbirdsevolve.com/meta/'

  app 'Meta.app'
end
