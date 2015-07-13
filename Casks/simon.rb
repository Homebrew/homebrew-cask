cask :v1 => 'simon' do
  version '4.0.3'
  sha256 '227ac2b8cf042b090cb0d14904e8be61edd97eac980d2b2e9fba76815350afc7'

  url "http://www.dejal.com/download/simon-#{version}.zip"
  appcast 'http://www.dejal.com/appcast/?prod=simon',
          :sha256 => '04888accf899b0517229bae3b021f0cc3b754686cca8ac82a7212dd17a4fc6dc'
  name 'Simon'
  homepage 'http://www.dejal.com/simon/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Simon.app'
end
