cask 'harmony' do
  version '0.4.5'
  sha256 '4baefe6ff06a977afcb4bf8cf6ba0449b13a62876fb47539f2778671d49e27e8'

  # github.com/vincelwt/harmony was verified as official when first introduced to the cask
  url "https://github.com/vincelwt/harmony/releases/download/v#{version}/harmony-#{version}.dmg"
  appcast 'https://github.com/vincelwt/harmony/releases.atom',
          checkpoint: 'a02fdc8573b9852046d096542dd2f2f7f0c2b1c7d37ab88e52de0353434fcd26'
  name 'Harmony'
  homepage 'http://getharmony.xyz/'

  app 'Harmony.app'
end
