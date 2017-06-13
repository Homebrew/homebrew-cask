cask 'context-free' do
  version '3.0.11'
  sha256 'ecc71fe3b9f7f589c1bd55fa551a4b0f5caaa9660770eb516fa148ce5d04ef87'

  url "http://www.contextfreeart.org/download/ContextFree#{version}.dmg"
  appcast 'https://github.com/MtnViewJohn/context-free/releases.atom',
          checkpoint: '6b36b78fb8b7843415e0c8daff96faf420896c32516cc364269f0263dba19080'
  name 'Context Free'
  homepage 'https://www.contextfreeart.org/'

  app 'Context Free.app'
end
