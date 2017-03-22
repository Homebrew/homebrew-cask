cask 'firestr' do
  version '0.11'
  sha256 '7d7d3740b2eb5a78bc8573b24cdc47c15bcd6536e21f0e8e82722b8a7e8e8cf3'

  url "https://mempko.com/firestr/build/#{version}/firestr_#{version}.dmg"
  name 'Firestar'
  name 'Fire★'
  homepage 'https://mempko.com/firestr/firestr.html'

  app 'Firestr.app'
end
