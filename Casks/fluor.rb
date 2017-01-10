cask 'fluor' do
  version '1.0.1'
  sha256 :no_check

  url "https://github.com/Pyroh/Fluor/releases/download/#{version}/Fluor.#{version}.dmg"
  name 'Fluor'
  homepage 'https://github.com/Pyroh/Fluor/'

  app 'Fluor.app'
end
