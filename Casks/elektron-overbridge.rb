cask 'elektron-overbridge' do
  version :latest
  sha256 :no_check

  # https://www.elektron.se/overbridge/ was verified as official when first introduced to the cask
  url 'https://s3-eu-west-1.amazonaws.com/se-elektron-devops/release/8d1ef129-6161-52ac-b65a-ea18489fd654/Elektron_Overbridge_2.0.37.3.dmg'
  name 'Overbridge'
  homepage 'https://www.elektron.se/overbridge/'

  pkg 'Elektron Overbridge Installer 2.0.37.3.pkg'

  uninstall script: {
                      executable: '/Applications/Elektron/Overbridge_Uninstaller.app/Contents/MacOS/Overbridge_Uninstaller',
                      sudo:       true,
                    }
end
