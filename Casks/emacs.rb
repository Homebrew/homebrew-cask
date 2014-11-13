cask :v1 => 'emacs' do
  version '24.4'
  sha256 '2d13ff9edff16d4e8f4bc9cf37961cf91a3f308fad5e9c214c4a546e86719312'

  url "http://emacsformacosx.com/emacs-builds/Emacs-#{version}-universal.dmg"
  homepage 'http://emacsformacosx.com/'
  license :oss

  app 'Emacs.app'
end
