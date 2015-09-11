cask :v1 => 'simon' do
  version '4.1'
  sha256 'a7f6e3b7775afd404633e3a876071be554c4fecdd9efb1fcf3071c0d776f758c'

  url "http://www.dejal.com/download/simon-#{version}.zip"
  appcast 'http://www.dejal.com/appcast/?prod=simon',
          :sha256 => '19ad2681be99141471d288d0b1547ed16161e160e265d29297c079bdf24f0eb3'
  name 'Simon'
  homepage 'http://www.dejal.com/simon/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Simon.app'
end
