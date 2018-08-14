cask 'meta' do
  version '1.8.6'
  sha256 'fb7f531240f3e546f5ff5277a7f9380949875025e53d109dac266d9d48294592'

  url "https://www.nightbirdsevolve.com/meta/updates/bin/Meta%20#{version}.zip"
  appcast 'https://www.nightbirdsevolve.com/meta/updates/'
  name 'Meta'
  homepage 'https://www.nightbirdsevolve.com/meta/'

  app 'Meta.app'
end
