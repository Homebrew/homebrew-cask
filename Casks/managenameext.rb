cask 'managenameext' do
  version '1.6.3'
  sha256 '57f34571293b525ea7d9c0068f784c9684ac26f8da54f93b2fd3dd0f2c1d2aa1'

  url 'http://throb.pagesperso-orange.fr/prg/Xojo/ManageNameExt_c.zip'
  appcast 'http://throb.pagesperso-orange.fr/prg/Xojo/ManageNameExt_AffV.html',
          checkpoint: '48c241c749d43463b4f829520a97a22019cdbbef9389292636c262d3aab6ea2b'
  name 'ManageNameExt'
  homepage 'http://throb.pagesperso-orange.fr/site/ind_JS.html?Prg_S.html&Prg_ApplisRB.html#ManageNameExt'

  depends_on macos: '>= :mavericks'

  app 'ManageNameExt.app'
end
