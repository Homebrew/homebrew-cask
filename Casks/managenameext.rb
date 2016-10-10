cask 'managenameext' do
  version :latest
  sha256 :no_check

  # tom.25.free.fr was verified as official when first introduced to the cask
  url 'http://tom.25.free.fr/prg/Xojo/ManageNameExt_c.zip'
  name 'ManageNameExt'
  homepage 'https://throb.pagesperso-orange.fr/site/ind_JS.html?Prg_S.html&Prg_AutresRB.html#ManageNameExt'

  app 'ManageNameExt.app'
end
