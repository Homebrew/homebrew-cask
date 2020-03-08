cask 'mockolo' do
  version '1.1.5'
  sha256 '5bc10c1bfc3c142750c826ee44bec790a09808f9843ad9a0ac64d9225970f65f'

  url 'https://github.com/uber/mockolo/releases/download/1.1.5/mockolo.tar.gz'
  appcast 'https://github.com/uber/mockolo/releases.atom'
  name 'mockolo'
  homepage 'https://github.com/uber/mockolo'

  binary 'mockolo'
  binary 'lib_InternalSwiftSyntaxParser.dylib'
end
