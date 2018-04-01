cask 'origami-studio' do
  version :latest
  sha256 :no_check

  # fb.me/getorigamistudio was verified as official when first introduced to the cask
  url 'https://fb.me/getorigamistudio'
  name 'Origami Studio'
  homepage 'http://origami.design/'

  app 'Origami Studio.app'
end
