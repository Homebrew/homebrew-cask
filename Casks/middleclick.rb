cask 'middleclick' do
  version '1.0'
  sha256 'a83a329493b9140cb73b418ddfa2e921555fc7706a11d8ec2ba13c4016392aca'

  # github.com was verified as official when first introduced to the cask
  url 'https://github.com/cl3m/MiddleClick/releases/download/mojave/MiddleClick_Mojave.zip'
  appcast 'https://github.com/cl3m/MiddleClick/releases.atom'
  name 'MiddleClick'
  homepage 'https://rouge41.com/labs/'

  app 'MiddleClick.app'

  caveats do
    discontinued
  end
end
