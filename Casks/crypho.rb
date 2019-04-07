cask 'crypho' do
  version '4.1.3'
  sha256 '9cec4de034eeba00f867f05e9d4a678193e6cee6a669685435d6918cb9e6272e'

  url "https://www.crypho.com/downloads/desktop/Crypho-#{version}.dmg"
  appcast 'https://www.crypho.com/download/'
  name 'Crypho'
  homepage 'https://www.crypho.com/'

  app 'Crypho.app'
end
