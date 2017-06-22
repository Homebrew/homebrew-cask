cask 'psychopy' do
  version '1.85.2'
  sha256 '544caead453b328afa38a5ad535198714ec7e2405bcba668c35a7c93b35e96b9'

  url "https://github.com/psychopy/psychopy/releases/download/#{version}/StandalonePsychoPy-#{version}-OSX_64bit.dmg"
  appcast 'https://github.com/psychopy/psychopy/releases.atom',
          checkpoint: '5622392b1d4d26628d9e003322bd9ee2a7c33c263a7aa6552d624254b0b09357'
  name 'PsychoPy'
  homepage 'https://github.com/psychopy/psychopy'

  app 'PsychoPy2.app'
end
