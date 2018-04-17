cask 'm3unify' do
  version '1.9.2'
  sha256 '12881a7d4ec42f6cc43763513c5a68a9e1903f7e11cbd31aa272c42215499d2f'

  url "https://dougscripts.com/itunes/scrx/m3unifyv#{version.no_dots}.zip"
  appcast 'https://dougscripts.com/itunes/itinfo/m3unify_appcast.xml',
          checkpoint: 'c79e86fd0a547b87384537d8103b0a752e55b9b9294b2911531489b35afd1b5c'
  name 'M3Unify'
  homepage 'https://dougscripts.com/apps/m3unifyapp.php'

  app 'M3Unify.app'
end
