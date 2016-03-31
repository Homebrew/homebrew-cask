cask 'bitnami-mampstack' do
  version '5.6.19-0'
  sha256 '5323f90b8353018f281f1145331c61ea152bfa06a4ae640dda11883462797498'

  url 'https://bitnami.com/redirect/to/97696/bitnami-mampstack-5.6.19-0-osx-x86_64-installer.dmg'
  name 'Bitnami Mac Apache MySQL PHP (MAMP)'
  homepage 'http://bitnami.org/'
  license :gratis

  app '/Applications/mampstack/manager-osx.app'
  installer script: 'MAMP.app/Contents/MacOS/installbuilder.sh',
            args:   ['--mode', 'unattended', '--unattendedmodeui', 'none', '--base_password', 'password', '--prefix', '/Applications/mampstack'],
            sudo:   false

  # preflight do
  #  system '/bin/bash', '/Applications/mampstack/ctlscript.sh', 'stop'
  # end

  uninstall script: {
                      executable: '/Applications/mampstack/uninstall.app/Contents/MacOS/installbuilder.sh',
                      args:       ['--mode', 'unattended', '--unattendedmodeui', 'none'],
                      sudo:       false,
                    }

  caveats do
    <<-EOS.undent
    The path name was truncated to mampstack.
    This app takes a few minutes to install so be patient.
    If asked for a password use 'password'.
    EOS
  end
end
