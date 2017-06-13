cask 'nucleo' do
  version '1.0.8'
  sha256 '29fc28950580397b369abadf18b399a41789bfbbac187dfd09d337f6205dd366'

  # dl.devmate.com was verified as official when first introduced to the cask
  url 'https://dl.devmate.com/co.ambercreative.Nucleoapp/Nucleo.zip'
  appcast 'https://updates.devmate.com/co.ambercreative.Nucleoapp.xml',
          checkpoint: 'f9919b453efa59ddddbc230a3f9b10502021d56c4dc4fed059d17914acff44e5'
  name 'Nucleo'
  homepage 'https://nucleoapp.com/'

  app 'Nucleo.app'
end
