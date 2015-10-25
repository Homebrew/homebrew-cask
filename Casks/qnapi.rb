cask :v1 => 'qnapi' do
  version '0.1.9'
  sha256 '0c8c1ef1ca74af0abc37d5af6b31374e4aad93e16261c488bb6e581b2946606a'

  url "https://github.com/QNapi/qnapi/releases/download/#{version}/QNapi-#{version}.dmg"
  appcast 'https://github.com/QNapi/qnapi/releases.atom'
  name 'QNapi'
  homepage 'https://qnapi.github.io/'
  license :gpl

  app 'QNapi.app'
end
