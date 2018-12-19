cask 'managenameext' do
  version '1.6.6'
  sha256 '77868a31f6e2e4e4c56922155ce19dbbe0748858ba32f871132d5b1511a3db3c'

  url 'http://throb.pagesperso-orange.fr/prg/Xojo/ManageNameExt_c.zip'
  appcast 'http://throb.pagesperso-orange.fr/prg/Xojo/ManageNameExt_AffV.html'
  name 'ManageNameExt'
  homepage 'http://throb.pagesperso-orange.fr/site/ind_JS.html?Prg_S.html&Prg_ApplisRB.html#ManageNameExt'

  depends_on macos: '>= :mavericks'

  app 'ManageNameExt.app'
end
