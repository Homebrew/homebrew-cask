cask :v1 => 'subl' do
  version '1.4'
  sha256 '9e252eb6d7e12d27f80cd6a510c69772c6993b9e6140129fd5e9178f441099c6'

  url "https://github.com/dhoulb/subl/releases/download/v#{version}/Subl.app.zip"
  appcast 'https://github.com/dhoulb/subl/releases.atom'
  name 'subl:// URL handler'
  homepage 'https://github.com/dhoulb/subl'
  license :oss

  app 'Subl.app'
end
