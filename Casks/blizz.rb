cask 'blizz' do
  version '15.5.4'
  sha256 '06f8924854438da08b32d36df38a785a2b511b60104ade1c11fd464dd1c4aefd'

  # dl.teamviewer.com was verified as official when first introduced to the cask
  url "https://dl.teamviewer.com/blizz/installer/mac/#{version}/Blizz.dmg"
  name 'Blizz'
  homepage 'https://www.blizz.com/'

  app 'Blizz.app'
end
