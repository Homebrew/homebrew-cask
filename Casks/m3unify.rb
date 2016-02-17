cask 'm3unify' do
  version '1.4.3'
  sha256 '1ac7fd5535bfa6ea42bd4c38771744c7ea98ac4d7af604c159e5a5bbe04c05da'

  url "http://dougscripts.com/itunes/scrx/m3unifyv#{version.delete('.')}.zip"
  appcast 'http://dougscripts.com/itunes/itinfo/m3unify_appcast.xml',
          checkpoint: '5425159de028abd0cb8fb88dbf2dcdd1173d399ee449438fa9fe6ef93e33318c'
  name 'M3Unify'
  homepage 'http://dougscripts.com/itunes/itinfo/m3unify.php'
  license :commercial

  app 'M3Unify.app'
end
