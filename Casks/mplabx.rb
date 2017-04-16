cask :v1 => 'mplabx' do
  version '2.30'
  sha256 '551788c3f428590da3ee405ad3e6756a57ecb1c3dd4effe76fafebc10c4e1892'

  url 'http://www.microchip.com/mplabx-ide-osx-installer'
  name 'Microchip MPLabX'
  homepage 'http://www.microchip.com/pagehandler/en-us/family/mplabx/home.html'
  license :commercial

  installer :script => "MPLABX-v#{version}-osx-installer.app/Contents/MacOS/installbuilder.sh",
            :args => %w[--mode unattended
                        --ide 1
                        --ipe 1
                        --exepermission no
                        --installdir /opt/homebrew-cask/Caskroom/mplabx/2.30]
  installer :script => '/usr/sbin/chown',
            :args => ['-R', "#{Etc.getpwuid(Process.euid).name}:staff", "/opt/homebrew-cask/Caskroom/mplabx/#{version}"]
  installer :script => '/bin/rm',
            :args => ['-rf', "/opt/homebrew-cask/Caskroom/mplabx/#{version}/MPLABX-v#{version}-osx-installer.app"]

  app 'mplab_ide.app', :target => 'MPlabX IDE.app'
  app 'mplab_ipe.app', :target => 'MPlabX IPE.app'

  uninstall :script => {
                :executable => "Uninstall_MPLAB_X_IDE_v#{version}.app/Contents/MacOS/installbuilder.sh",
                :args => ['--mode', 'unattended']
  }

  depends_on :cask => 'caskroom/versions/java6'
end
