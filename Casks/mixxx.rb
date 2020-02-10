cask 'mixxx' do
  version '2.2.3'
  sha256 '8933127b9780fc8f7c5ef050d9b35e1fbeb98e5281595863d22741f5dd292420'

  url "https://downloads.mixxx.org/mixxx-#{version}/mixxx-#{version}-osxintel.dmg"
  appcast 'https://www.mixxx.org/download/'
  name 'Mixxx'
  homepage 'https://www.mixxx.org/'

  app 'Mixxx.app'
end
