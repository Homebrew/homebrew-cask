cask 'idafree' do
  version '7.0'
  sha256 '7cbcfbcbff4154e358428987e8511196cc84a1562de4406ba13c6df5d2230bcb'

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
