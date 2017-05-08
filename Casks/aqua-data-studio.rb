cask 'aqua-data-studio' do
  version '18.0.10'
  sha256 'fefb3acab875b675a4f5af1e701fd542fd51aa2e64a0607718f4ed95f63f91fa'

  url "http://www.aquafold.com/download/v#{version.major}.0.0/osx/ads-osx-#{version}.tar.gz"
  appcast 'http://www.aquafold.com/download/',
          checkpoint: '4ea4c5ab005a8b364c88375d5de968b32bb0d4f0e032bffaedf87e5112bad5cc'
  name 'Aquafold Aqua Data Studio'
  homepage 'http://www.aquafold.com/aquadatastudio.html'

  app 'Aqua Data Studio.app'
end
