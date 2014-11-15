cask :v1 => 'simon' do
  version '3.6.1'
  sha256 '19a3395bdfd0c8c400c4e489e6d6ff192415661033e91023fc4c9297b28b4168'

  url "http://www.dejal.com/download/simon-#{version}.zip"
  homepage 'http://www.dejal.com/simon/'
  license :unknown

  app 'Simon.app'
end
