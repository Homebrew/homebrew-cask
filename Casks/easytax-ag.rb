cask 'easytax-ag' do
  version '2017,1.3'
  sha256 'ab8857d14e336b103f56764b5d4b9dc416767184ee0efadcb2503ebde7095427'

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
