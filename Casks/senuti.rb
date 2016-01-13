cask 'senuti' do
  version '1.3.3'
  sha256 '23bf22a7c468753ab71a6464d920f05223a093ec17bc9e3a7d3be8ea6913474f'

  url "https://www.fadingred.com/files/senuti/senuti_#{version}.zip"
  appcast 'https://www.fadingred.com/senuti/updates.xml',
          :sha256 => '9284447ae644acabcf00cabaed1600c23495de7afe47d6d1d03e8d93c7f0594b'
  name 'Senuti'
  homepage 'https://www.fadingred.com/senuti/'
  license :commercial

  app 'Senuti.app'
end
