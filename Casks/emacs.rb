cask 'emacs' do
  version '24.5-1'
  sha256 'c99c3def07886c0897c7c4bfc4a19338ea3d5bbcc2986d48be98aae1401f5830'

  url "http://emacsformacosx.com/emacs-builds/Emacs-#{version}-universal.dmg"
  name 'Emacs'
  homepage 'http://emacsformacosx.com/'
  license :oss

  app 'Emacs.app'
end
