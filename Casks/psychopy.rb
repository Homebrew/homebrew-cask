cask 'psychopy' do
  version '1.85.6'
  sha256 'a81918e7029b8ff4cebf5e1626f7089f3c765d9762b8fc3f37163af24291be21'

  url "https://github.com/psychopy/psychopy/releases/download/#{version}/StandalonePsychoPy-#{version}-OSX_64bit.dmg"
  appcast 'https://github.com/psychopy/psychopy/releases.atom',
          checkpoint: '2e674bdbcdb5af84d0ab01a3b83858f7297696a578e29b2fcc8533719e32bf12'
  name 'PsychoPy'
  homepage 'https://github.com/psychopy/psychopy'

  app 'PsychoPy2.app'
end
