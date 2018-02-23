cask 'easytaxag' do
  version '2017,1.1'
  sha256 'a488bf84734f45d0c95e017aa05e04ec4baf33f758eab368801d1b4406df133d'

  url "https://msg-easytax.ch/ag/#{version.before_comma}/EasyTax#{version.before_comma}AG_macos_#{version.after_comma.dots_to_underscores}_mitJRE.dmg"
  name "EasyTax AG"
  homepage 'https://msg-easytax.ch/'

  preflight do
    system_command "#{staged_path}/EasyTax #{version.before_comma} AG Installationsprogramm.app/Contents/MacOS/JavaApplicationStub",
                   args:         [
                                   '-q',
                                 ],
                   print_stderr: false
  end

  uninstall_preflight do
    system_command "#{staged_path}/EasyTax #{version.before_comma} AG Deinstallationsprogramm.app/Contents/MacOS/JavaApplicationStub",
                   args:         [
                                   '-q',
                                 ],
                   print_stderr: false
  end
end
