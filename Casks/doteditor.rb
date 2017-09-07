cask 'doteditor' do
  version '0.3.1'
  sha256 '06e60c4e474bbca2246804140d73d3faeec7a984759a0fca6d47e07d5994dbcf'

  # github.com/vincenthEE/DotEditor was verified as official when first introduced to the cask
  url "https://github.com/vincenthEE/DotEditor/releases/download/v#{version}/DotEditor.#{version}.dmg"
  appcast 'https://github.com/vincenthEE/DotEditor/releases.atom',
          checkpoint: 'aeffe7fe003602a870319b4494444b6d97898d63047c330138011487a5c37a21'
  name 'DotEditor'
  homepage 'https://vincenthee.github.io/DotEditor/'

  depends_on formula: 'graphviz'

  app 'DotEditor.app'
end
