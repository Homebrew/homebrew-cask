cask 'fluor' do
  version '1.0.1'
  sha256 'b1f8e0d40e134f5cc3b321839e6fbfda0c4cabdd8876c0abd0befef20805444f'

  url "https://github.com/Pyroh/Fluor/releases/download/#{version}/Fluor.#{version}.dmg"
  appcast 'https://github.com/Pyroh/Fluor/releases.atom',
          checkpoint: 'ec2d213ea59ab8a0cfe8431b5e8a655445dc7140c7489166b9a54573e5711b5b'
  name 'Fluor'
  homepage 'https://github.com/Pyroh/Fluor/'

  app 'Fluor.app'
end
