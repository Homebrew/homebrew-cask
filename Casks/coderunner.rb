cask :v1 => 'coderunner' do
  version :latest
  sha256 :no_check

  url "https://coderunnerapp.com/download"
  name 'CodeRunner'
  homepage 'https://coderunnerapp.com/'
  license :unknown

  app 'CodeRunner.app'
end
