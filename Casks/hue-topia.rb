cask 'hue-topia' do
  version :latest
  sha256 :no_check

  url 'http://peacockmedia.software/mac/huetopia/huetopia.dmg'
  name 'Hue-topia'
  homepage 'http://peacockmedia.software/mac/huetopia/'
  license :commercial

  app 'Hue-topia.app'
end
