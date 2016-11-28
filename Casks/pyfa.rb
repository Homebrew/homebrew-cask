cask 'pyfa' do
  version 'preview_ascension,20161123-e30040'
  sha256 '6daf9d23df997d70a40a31a2248c6acb7e4f93f00c469961b01ce9beb3fd98fa'

  url "https://github.com/pyfa-org/Pyfa/releases/download/#{version.before_comma}/pyfa-#{version.after_comma}-mac.zip"
  appcast 'https://github.com/pyfa-org/Pyfa/releases.atom',
          checkpoint: '653940a68f7436506cba226e764094e783d5b9fdc6356678fe1b0b68c9898047'
  name 'pyfa'
  homepage 'https://github.com/pyfa-org/Pyfa'

  app 'pyfa.app'
end
