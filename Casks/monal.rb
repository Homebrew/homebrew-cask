cask 'monal' do
  version :latest
  sha256 :no_check

  url 'https://monal.im/Monal-OSX/Monal-OSX.zip'
  name 'Monal'
  homepage 'https://monal.im/'

  depends_on macos: '>= :yosemite'

  app 'Monal.app'
end
