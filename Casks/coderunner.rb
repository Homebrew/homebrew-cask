cask :v1 => 'coderunner' do
  version :latest
  sha256 :no_check

  url 'https://coderunnerapp.com/download'
  name 'CodeRunner'
  appcast 'https://coderunnerapp.com/appcast.xml',
          :sha256 => 'bc0a476a000d50dfc0e4fe997838b13794c483dd1d41c85752b77c01c9a07594'
  homepage 'https://coderunnerapp.com/'
  license :unknown

  app 'CodeRunner.app'
end
