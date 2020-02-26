cask 'monal' do
  version '4.4,570'
  sha256 '2686301280d721a720d0f597d54b6673b4362ac73e2c13c797cecc598d159773'

  url 'https://monal.im/Monal-OSX/Monal-OSX.zip'
  appcast 'https://monal.im/Monal-OSX/appcast.xml',
          configuration: version.after_comma
  name 'Monal'
  homepage 'https://monal.im/'

  depends_on macos: '>= :yosemite'

  app 'Monal.app'
end
