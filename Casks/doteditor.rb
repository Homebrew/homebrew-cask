cask 'doteditor' do
  version '0.3.1'
  sha256 :no_check

  url "https://github.com/vincenthEE/DotEditor/releases/download/v#{version}/DotEditor.#{version}.dmg"
  appcast 'https://github.com/vincenthEE/DotEditor/releases.atom',
          checkpoint: 'aeffe7fe003602a870319b4494444b6d97898d63047c330138011487a5c37a21'
  name 'DotEditor'
  homepage 'http://vincenthee.github.io/DotEditor/'

  app 'DotEditor.app'

  caveats "Graphviz needs to be installed for #{token} to work."
end
