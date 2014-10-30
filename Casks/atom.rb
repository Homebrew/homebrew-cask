class Atom < Cask
  version :latest
  sha256 :no_check

  url 'https://atom.io/download/mac'
  homepage 'http://atom.io'
  license :mit

  app 'Atom.app'
  binary 'Atom.app/Contents/Resources/app/apm/node_modules/.bin/apm', :target => 'apm'
  binary 'Atom.app/Contents/Resources/app/atom.sh', :target => 'atom'
  postflight do
    system '/usr/bin/defaults', 'write', 'com.github.atom', 'moveToApplicationsFolderAlertSuppress', '-bool', 'true'
  end

  zap :delete => [
                  '~/.atom/config.cson',
                  '~/.atom/init.coffee',
                  '~/.atom/keymap.cson',
                  '~/.atom/keymaps',
                  '~/.atom/packages',
                  '~/.atom/snippets.cson',
                  '~/.atom/styles.less',
                  '~/Library/Application Support/ShipIt_stderr.log',
                  '~/Library/Application Support/ShipIt_stdout.log',
                  '~/Library/Application Support/com.github.atom.ShipIt',
                  '~/Library/Caches/com.github.atom',
                  '~/Library/Preferences/com.github.atom.plist',
                 ],
      :rmdir  => '~/.atom/'
end
