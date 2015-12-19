cask 'mixxx' do
  version '1.11.0'
  sha256 '21fa06153a1a019c001f96024caa940ea6307a29f4cebd334fb2b7f071013314'

  url "http://downloads.mixxx.org/mixxx-#{version}/mixxx-#{version}-macintel.dmg"
  name 'Mixxx'
  homepage 'http://www.mixxx.org'
  license :gpl

  app 'Mixxx.app'
end
