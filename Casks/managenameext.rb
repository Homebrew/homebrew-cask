cask 'managenameext' do
  version '1.6.6'
  sha256 :no_check

  url 'http://throb.pagesperso-orange.fr/prg/Xojo/ManageNameExt_c.zip'
  appcast 'http://throb.pagesperso-orange.fr/prg/Xojo/ManageNameExt_AffV.html'
  name 'ManageNameExt'
  homepage 'http://throb.pagesperso-orange.fr/site/ind_JS.html?Prg_S.html&Prg_ApplisRB.html#ManageNameExt'

  depends_on macos: '>= :mavericks'

  app 'ManageNameExt.app'
end
