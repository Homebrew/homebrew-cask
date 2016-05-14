cask 'pomotodo' do
  version '0.13.3,1458914986'
  sha256 '8ff2279ffd9e7efa7d3018df36ece019b2b6ca74d1e926f5c7a5a1ca12f436c6'

  # hackplan.com is the official download host per the vendor homepage
  url "http://cdn.hackplan.com/theair/#{version.after_comma}/Pomotodo_v#{version.before_comma}.dmg"
  appcast 'http://air.hackplan.com/projects/5455f382437315386000d4d5/versions/latest.xml',
          checkpoint: '30f76b576eba5c4a718e3284dc3bbab396f9f384ea5b21f9349b5c56e02cc104'
  name 'Pomodoro'
  homepage 'https://pomotodo.com'
  license :gratis

  app 'Pomotodo.app'
end
