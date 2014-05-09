class Atom < Cask
  url 'http://atom.io/download/mac'
  homepage 'http://atom.io'
  version 'latest'
  sha256 :no_check
  link 'Atom.app'
  binary 'Atom.app/Contents/Resources/app/apm/node_modules/.bin/apm', :target => 'apm'
  binary 'Atom.app/Contents/Resources/app/atom.sh', :target => 'atom'
  after_install do
    system '/usr/bin/defaults', 'write', 'com.github.atom', 'moveToApplicationsFolderAlertSuppress', '-bool', 'true'
  end
end
