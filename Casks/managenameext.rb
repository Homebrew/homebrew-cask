cask 'managenameext' do
  version '1.6.5'
  sha256 '6b127ff94ff3b16b8eda7d9b44c791105f98c86bcda6298f15bc0cc6553773b4'

  url 'http://throb.pagesperso-orange.fr/prg/Xojo/ManageNameExt_c.zip'
  appcast 'http://throb.pagesperso-orange.fr/prg/Xojo/ManageNameExt_AffV.html',
          checkpoint: '48c241c749d43463b4f829520a97a22019cdbbef9389292636c262d3aab6ea2b'
  name 'ManageNameExt'
  homepage 'http://throb.pagesperso-orange.fr/site/ind_JS.html?Prg_S.html&Prg_ApplisRB.html#ManageNameExt'

  depends_on macos: '>= :mavericks'

  app 'ManageNameExt.app'
end
