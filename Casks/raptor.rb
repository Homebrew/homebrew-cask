cask 'raptor' do
  version '1.0rc6'
  sha256 '52f405602b25d9fa490e6aefac545d3d42cbad025959bce687c79c9d76410960'

  url "https://github.com/Raptor-Fics-Interface/Raptor/releases/download/#{version}/Raptor_v#{version}_OS_X_Cocoa_x86_64.dmg"
  appcast 'https://github.com/Raptor-Fics-Interface/Raptor/releases.atom',
          checkpoint: '8546dbd018f4cd6a639f3dd82702b926341034dfa8f1d00ed3d872b1ad10a954'
  name 'Raptor Chess Interface'
  homepage 'https://github.com/raptor-fics-interface/raptor'
  license :bsd

  app 'Raptor.app'
end
