cask 'idafree' do
  version '7.0'
  sha256 'e1145fe950a6045e7aa96e58c14519e96274da9147ee47583b73696fc4e527f2'

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
