cask 'context-free' do
  version '3.0.10'
  sha256 '43fc99a9558393a726a04846eedca662d8c1cede68eddcb8aa91f7ee31bfa042'

  url "http://www.contextfreeart.org/download/ContextFree#{version}.dmg"
  appcast 'https://github.com/MtnViewJohn/context-free/releases.atom',
          checkpoint: '6c63e170204834cb906592d5591cfc70b88ff45532c9b20de315bf028aeb28b8'
  name 'Context Free'
  homepage 'https://www.contextfreeart.org/'

  app 'Context Free.app'
end
