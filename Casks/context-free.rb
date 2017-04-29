cask 'context-free' do
  version '3.0.10'
  sha256 '43fc99a9558393a726a04846eedca662d8c1cede68eddcb8aa91f7ee31bfa042'

  url "http://www.contextfreeart.org/download/ContextFree#{version}.dmg"
  appcast 'https://github.com/MtnViewJohn/context-free/releases.atom',
          checkpoint: '20779f86861972f42628dbecd36b5b6f7444f10994c23ca723958a7adb03f573'
  name 'Context Free'
  homepage 'https://www.contextfreeart.org/'

  app 'Context Free.app'
end
