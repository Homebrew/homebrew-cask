cask 'laravel-kit' do
  version '1.1.0'
  sha256 '58e12c1934d1e9d2eb474dab13ba40c282fa3f1e8e20251c5c488e7df1adc56b'

  url "https://github.com/tarequemdhanif/laravel-kit/releases/download/v#{version}/laravel-kit-#{version}-mac.zip"
  appcast 'https://github.com/tarequemdhanif/laravel-kit/releases.atom'
  name 'Laravel Kit'
  homepage 'https://github.com/tarequemdhanif/laravel-kit'

  auto_updates true

  app 'Laravel Kit.app'
end
