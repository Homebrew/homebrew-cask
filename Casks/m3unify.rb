cask 'm3unify' do
  version '1.8.1'
  sha256 '2792731dab19e90571ef08ba8dd3b6e65a778cfcb1f0ef221ea033d670ddf338'

  url "https://dougscripts.com/itunes/scrx/m3unifyv#{version.no_dots}.zip"
  appcast 'https://dougscripts.com/itunes/itinfo/m3unify_appcast.xml',
          checkpoint: 'fabd6382ec57e9f980a2ece0d19b097382c962b0376dc9def8c5ad4e1e59fde6'
  name 'M3Unify'
  homepage 'https://dougscripts.com/apps/m3unifyapp.php'

  app 'M3Unify.app'
end
