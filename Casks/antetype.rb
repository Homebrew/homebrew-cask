cask 'antetype' do
  version '1.7.2'
  sha256 '9a40450e01e0efa4b44ab3e7a2abcae8efc88eb615425273f0930ba3230680fc'

  # amazonaws.com/AntetypeDownload was verified as official when first introduced to the cask
  url 'https://s3.amazonaws.com/AntetypeDownload/Antetype.zip'
  appcast 'https://rink.hockeyapp.net/api/2/apps/6ab08fb043a94f51c9109c216e295a50',
          checkpoint: '1c34ded90e4db5bd7cbec65b1e55fce4a28f0d014478f7a73fa7b60212eee20e'
  name 'Antetype'
  homepage 'http://antetype.com'

  app 'Antetype.app'
end
