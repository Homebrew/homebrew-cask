cask 'm3unify' do
  version '1.4.5'
  sha256 'db2275b3b1a510f4de63eb22591d0795a67ed4ce1c54afff6f8c46b41ec3e026'

  url "https://dougscripts.com/itunes/scrx/m3unifyv#{version.no_dots}.zip"
  appcast 'https://dougscripts.com/itunes/itinfo/m3unify_appcast.xml',
          checkpoint: '1a309263774228ee6086a6275dca2a1436c326b0342fb549ee8d63e24224331d'
  name 'M3Unify'
  homepage 'https://dougscripts.com/apps/m3unifyapp.php'

  app 'M3Unify.app'
end
