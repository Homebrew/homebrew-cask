cask 'eloquent' do
  version '2.6.2'
  sha256 'b3c979608b74757cc6ff4acc0c753394960f75a2d0e15f908a8895e1f2113ecb'

  url "https://github.com/mdbergmann/Eloquent/releases/download/#{version}/Eloquent-#{version}.app.zip"
  appcast 'https://github.com/mdbergmann/Eloquent/releases.atom',
          checkpoint: 'd528eebc120b918aea3997822d21a1feab04a29e2ef18f788b00d46b698e7644'
  name 'Eloquent'
  homepage 'https://github.com/mdbergmann/Eloquent'

  app 'Eloquent.app'

  zap trash: [
               '~/Library/Application Support/Eloquent',
               '~/Library/Caches/org.crosswire.Eloquent',
               '~/Library/Logs/Eloquent.log',
             ]
end
