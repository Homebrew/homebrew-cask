cask :v1 => 'managenameext' do
  version :latest
  sha256 :no_check

  # free.fr is the official download host per the vendor homepage
  url 'http://tom.25.free.fr/site/programmes/xojo/ManageNameExt_c.zip'
  homepage 'http://throb.pagesperso-orange.fr/site/ind_JS.html?Prg_S.html&Prg_AutresRB.html#ManageNameExt'
  license :unknown

  app 'ManageNameExt.app'
end
