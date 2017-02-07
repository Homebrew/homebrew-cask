cask 'phoenix' do
  version '2.5'
  sha256 'da5a3c580e028e70ed3fd3cf325f4a1ae40366d6cf2b25e6a151c65b525ec828'

  url "https://github.com/kasper/phoenix/releases/download/#{version}/phoenix-#{version}.tar.gz"
  appcast 'https://github.com/kasper/phoenix/releases.atom',
          checkpoint: '80ffe2afccd60b7607aeb44370c1afd51c498d8f18314979c18a9d12eebb5fb6'
  name 'Phoenix'
  homepage 'https://github.com/kasper/phoenix/'

  accessibility_access true
  depends_on macos: '>= :yosemite'

  app 'Phoenix.app'

  zap delete: [
                '~/.phoenix.js',
                '~/Library/Application Support/Phoenix/storage.json',
              ]
end
