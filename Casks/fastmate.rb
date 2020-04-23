cask 'fastmate' do
  version '1.5.0'
  sha256 '0c6bd555bf2ce79cd9fabb9c47c244ecd4290c1d9c0b9d3851f8714b96a9f79f'

  url "https://github.com/joelekstrom/fastmate/releases/download/v#{version}/Fastmate-#{version}.zip"
  appcast 'https://github.com/joelekstrom/fastmate/releases.atom'
  name 'Fastmate'
  homepage 'https://github.com/joelekstrom/fastmate'

  app 'Fastmate.app'
end
