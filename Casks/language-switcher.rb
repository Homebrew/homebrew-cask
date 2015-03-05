cask :v1 => 'language-switcher' do
  version '1.1.7'
  sha256 'c65882f00b195a0821dd3baf2c81a71d3ddd01b64cf6beaf56abb47cb948ffa8'

  url 'http://www.tj-hd.co.uk/downloads/Language_Switcher_1_1_7.dmg'
  name 'Language Switcher'
  homepage 'http://www.tj-hd.co.uk/en-gb/languageswitcher/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Language Switcher.app'
end
