cask :v1 => 'screenflick' do
  version :latest
  sha256 :no_check

  url 'http://www.araelium.com/screenflick/downloads/Screenflick.zip'
  appcast 'https://arweb-assets.s3.amazonaws.com/downloads/screenflick/screenflick2.xml',
          :sha256 => '51e1529a4565a754cfbcead19f1c3cd80d01963aefcd01e9382051c548f10838'
  name 'Screenflick'
  homepage 'http://www.araelium.com/screenflick/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Screenflick.app'
end
