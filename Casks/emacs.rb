cask :v1 => 'emacs' do
  version '24.5'
  sha256 '60b8c7d51659b6ccd86108a0f14866ab96a098797e350cb03c24040bb69d8ce2'

  url "http://emacsformacosx.com/emacs-builds/Emacs-#{version}-universal.dmg"
  name 'Emacs for Mac OS X'
  name 'Emacs'
  homepage 'http://emacsformacosx.com/'
  license :oss

  app 'Emacs.app'
end
