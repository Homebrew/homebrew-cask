cask 'chronos' do
  version '3.0.0'
  sha256 'c906c34d5eadc174dfa18345d2bbc74e4d22b2901bc11cb046c3077bd7070e38'

  url "https://github.com/web-pal/chronos-timetracker/releases/download/v#{version}/Chronos-#{version}-mac.zip"
  appcast 'https://github.com/web-pal/chronos-timetracker/releases.atom'
  name 'Chronos Timetracker'
  homepage 'https://github.com/web-pal/chronos-timetracker'

  app 'Chronos.app'
end
