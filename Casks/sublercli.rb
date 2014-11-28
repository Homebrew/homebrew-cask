cask :v1 => 'sublercli' do
  version '0.19'
  sha256 '968c6c0ff530ee603a5a3deec93911cc1c5c1fd8b100883cb485278fccc79104'

  url "https://subler.googlecode.com/files/SublerCLI-#{version}.zip"
  homepage 'https://code.google.com/p/subler/'
  license :oss

  binary 'SublerCLI'
end
