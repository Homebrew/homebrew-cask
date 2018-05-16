cask 'firestr' do
  version '0.11'
  sha256 '01bc1cda3f12b1bf510b668ad437f6cdbe2db3bd249d8840367569becd7df952'

  url "https://mempko.com/firestr/build/#{version}/firestr_#{version}.dmg"
  name 'Firestar'
  name 'Fire★'
  homepage 'https://mempko.com/firestr/firestr.html'

  app 'Firestr.app'
end
