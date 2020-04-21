cask 'fman' do
  version '1.7.2'
  sha256 'e2e4793a8192f2f58641c9b554385a9bd9b57edc090927b7d2213111aa5a2042'

  url "https://fman.io/updates/mac/#{version}.zip"
  appcast 'https://fman.io/updates/Appcast.xml'
  name 'fman'
  homepage 'https://fman.io/'

  app 'fman.app'
end
