cask 'endlesssky' do
  version '0.8.10'
  sha256 'b13e6742ed17cc504e08edbaeb9ff8bcbf0e7b6c09715c03f6443bd2bbf8aa2f'

  url "https://github.com/endless-sky/endless-sky/releases/download/v#{version}/endless-sky-macosx-#{version}.dmg"
  appcast 'https://github.com/endless-sky/endless-sky/releases.atom',
          :sha256 => '7a27a907fc6892c617c767f6919375755746d07333c32f92aa513f1ac3749d66'
  name 'Endless Sky'
  homepage 'https://endless-sky.github.io/'
  license :gpl

  app 'EndlessSky.app'
end
