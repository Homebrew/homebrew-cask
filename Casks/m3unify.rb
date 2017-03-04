cask 'm3unify' do
  version '1.7.1'
  sha256 '29d67b2e0e584bb0472d219e36a77b587b6ff8fd76402eff60737a794e094650'

  url "https://dougscripts.com/itunes/scrx/m3unifyv#{version.no_dots}.zip"
  appcast 'https://dougscripts.com/itunes/itinfo/m3unify_appcast.xml',
          checkpoint: 'bc96f543e21d718b84ab6cfd1d977d5b2d54c6db122648abb2a520ded22af106'
  name 'M3Unify'
  homepage 'https://dougscripts.com/apps/m3unifyapp.php'

  app 'M3Unify.app'
end
