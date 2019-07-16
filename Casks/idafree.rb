cask 'idafree' do
  version '7.0'
  sha256 'e1101908ccb13eab5b33d7b4cb8c991993a7054a23232f1c94e214e228569ba8'

  url "https://out7.hex-rays.com/files/idafree#{version.no_dots}_mac.tgz"
  name 'IDA Free'
  homepage 'https://www.hex-rays.com/index.shtml'

  installer script: {
                      executable: "idafree-#{version}-osx-installer.app/Contents/MacOS/installbuilder.sh",
                      args:       ['--mode', 'unattended'],
                    }

  uninstall script: {
                      executable: '/Applications/IDA Free/uninstall.app/Contents/MacOS/installbuilder.sh',
                      args:       ['--mode', 'unattended'],
                      sudo:       true,
                    }
end
