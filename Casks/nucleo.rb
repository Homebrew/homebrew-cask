cask 'nucleo' do
  version '1.0.3'
  sha256 'e550489f76166fddf5e9267823d01560d00df4abce960541f42252caea2ff8b7'

  # dl.devmate.com was verified as official when first introduced to the cask
  url 'https://dl.devmate.com/co.ambercreative.Nucleoapp/Nucleo.zip'
  appcast 'https://updates.devmate.com/co.ambercreative.Nucleoapp.xml',
          checkpoint: 'c895bfe129830eb1d85bc6bd0727c321eda667aea63a116222dbd3f242815a3d'
  name 'Nucleo'
  homepage 'https://nucleoapp.com/'
  license :commercial

  app 'Nucleo.app'
end
