cask 'meta' do
  version '1.8.5'
  sha256 'f5e05fb33794daeb89fe747906667847bcd0455b7e5ed54795e9373ab2e32b9e'

  url "https://www.nightbirdsevolve.com/meta/updates/bin/Meta%20#{version}.zip"
  appcast 'https://www.nightbirdsevolve.com/meta/updates/'
  name 'Meta'
  homepage 'https://www.nightbirdsevolve.com/meta/'

  app 'Meta.app'
end
