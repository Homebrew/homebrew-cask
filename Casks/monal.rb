cask 'monal' do
  version '2b7'
  sha256 '3a2ac928be431a27e73f0ff4237ed52e8375e4e995d8f6512d4c3cd3fa2c7673'

  url 'https://monal.im/Monal-OSX/Monal-OSX.zip'
  appcast 'https://monal.im/Monal-OSX/appcast.xml',
          checkpoint: 'c694282881493b66b7fda296ea1fdfc4ed142f5b8bf1bf94e686dba15d0e58c7'
  name 'Monal'
  homepage 'https://monal.im/'

  app 'Monal.app'
end
