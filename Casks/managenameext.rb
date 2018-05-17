cask 'managenameext' do
  version '1.6.4'
  sha256 'c037419321ee4dd16dbbbfef42220789683336eaefcce1fb72f7ca9ce3f7df3e'

  url 'http://throb.pagesperso-orange.fr/prg/Xojo/ManageNameExt_c.zip'
  appcast 'http://throb.pagesperso-orange.fr/prg/Xojo/ManageNameExt_AffV.html',
          checkpoint: '48c241c749d43463b4f829520a97a22019cdbbef9389292636c262d3aab6ea2b'
  name 'ManageNameExt'
  homepage 'http://throb.pagesperso-orange.fr/site/ind_JS.html?Prg_S.html&Prg_ApplisRB.html#ManageNameExt'

  depends_on macos: '>= :mavericks'

  app 'ManageNameExt.app'
end
