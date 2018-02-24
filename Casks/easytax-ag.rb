cask 'easytax-ag' do
  version '2017,1.1'
  sha256 'a488bf84734f45d0c95e017aa05e04ec4baf33f758eab368801d1b4406df133d'

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
