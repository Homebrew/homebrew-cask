cask :v1 => 'simon' do
  version '3.6.1'
  sha256 '19a3395bdfd0c8c400c4e489e6d6ff192415661033e91023fc4c9297b28b4168'

  url "http://www.dejal.com/download/simon-#{version}.zip"
  appcast 'http://www.dejal.com/appcast/?prod=simon',
          :sha256 => '04888accf899b0517229bae3b021f0cc3b754686cca8ac82a7212dd17a4fc6dc'
  name 'Simon'
  homepage 'http://www.dejal.com/simon/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Simon.app'
end
