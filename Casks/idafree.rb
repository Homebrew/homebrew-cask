cask 'idafree' do
  version '7.0'
  sha256 'aaf962bf02134f147cba56fe6b2c146549f5b270512e1406a4004f417e2799ac'

  url "https://out7.hex-rays.com/files/idafree#{version.no_dots}_mac.tgz"
  name 'IDA Free'
  homepage 'https://www.hex-rays.com/index.shtml'

  installer script: {
                      executable: "idafree#{version.no_dots}_mac.app/Contents/MacOS/installbuilder.sh",
                      args:       ['--mode', 'unattended'],
                    }

  uninstall script: {
                      executable: '/Applications/IDA Free/uninstall.app/Contents/MacOS/installbuilder.sh',
                      args:       ['--mode', 'unattended'],
                      sudo:       true,
                    }
end
