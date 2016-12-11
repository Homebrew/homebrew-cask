cask 'pyfa' do
  version '1.25.1,1.9'
  sha256 'd3d5bb635a5b95f64ef9e133e11f0717a214abf4a5e46c275a293549783ab8ac'

  url "https://github.com/pyfa-org/Pyfa/releases/download/v#{version.before_comma}/pyfa-#{version.before_comma}-ascension-#{version.after_comma}-mac.zip"
  appcast 'https://github.com/pyfa-org/Pyfa/releases.atom',
          checkpoint: '5a93c2b3880881738825b904a189b632147b2d5a9cc3a3a8fa75c8582048d0ba'
  name 'pyfa'
  homepage 'https://github.com/pyfa-org/Pyfa'

  app 'pyfa.app'
end
