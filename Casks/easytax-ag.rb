cask 'easytax-ag' do
  version '2017,1.2'
  sha256 '2d1c3747cf81922fda319c282779703c24bcd3637e91d2fc41dc8ea6864f690f'

  url "https://msg-easytax.ch/ag/#{version.before_comma}/EasyTax#{version.before_comma}AG_macos_#{version.after_comma.dots_to_underscores}_mitJRE.dmg"
  name 'EasyTax AG'
  homepage 'https://msg-easytax.ch/'

  installer script: {
                      executable: "EasyTax #{version.before_comma} AG Installationsprogramm.app/Contents/MacOS/JavaApplicationStub",
                      args:       ['-q'],
                    }

  uninstall script: {
                      executable: "/Applications/EasyTax/AG#{version.before_comma}/EasyTax #{version.before_comma} AG Deinstallationsprogramm.app/Contents/MacOS/JavaApplicationStub",
                      args:       ['-q'],
                    },
            rmdir:  '/Applications/EasyTax'
end
