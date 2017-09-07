cask 'mudlet' do
  version '3.4.0'
  sha256 '5db3b751bdca324d8cc37db1f38d3f93600fbf0c722b4691f0f6d25274b02183'

  url "https://www.mudlet.org/download/Mudlet-#{version}.dmg"
  appcast 'https://github.com/Mudlet/Mudlet/releases.atom',
          checkpoint: '4e76377fea71f981fe492ab7cb5357de55fb06ba96a39fbb81d57f5a0cf0fd01'
  name 'Mudlet'
  homepage 'https://www.mudlet.org/'

  app 'Mudlet.app'
end
