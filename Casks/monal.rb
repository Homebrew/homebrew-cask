cask 'monal' do
  version '2.1.1b1'
  sha256 'da4d448959b98a7c2e0fd66962633f5d42f0a0a4459b4b018ee4fa6d891b1dc2'

  url 'https://monal.im/Monal-OSX/Monal-OSX.zip'
  appcast 'https://monal.im/Monal-OSX/appcast.xml',
          checkpoint: 'e1f00250cd7c25b510e66be29ae3b6e1156eff8b89c0b06dcdf3a199153475ac'
  name 'Monal'
  homepage 'https://monal.im/'

  depends_on macos: '>= :yosemite'

  app 'Monal.app'
end
