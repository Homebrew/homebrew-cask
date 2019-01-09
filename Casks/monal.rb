cask 'monal' do
  version '2.3b10'
  sha256 'a098225234544e7565af73b93be4d8f29034041d0a56833c0acd673d77b6f8a4'

  url 'https://monal.im/Monal-OSX/Monal-OSX.zip'
  appcast 'https://monal.im/Monal-OSX/appcast.xml'
  name 'Monal'
  homepage 'https://monal.im/'

  depends_on macos: '>= :yosemite'

  app 'Monal.app'
end
