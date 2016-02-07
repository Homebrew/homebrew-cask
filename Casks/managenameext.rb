cask 'managenameext' do
  version :latest
  sha256 :no_check

  # free.fr is the official download host per the vendor homepage
  url 'http://tom.25.free.fr/prg/Xojo/ManageNameExt_c.zip'
  name 'ManageNameExt'
  homepage 'http://throb.pagesperso-orange.fr/site/ind_JS.html?Prg_S.html&Prg_AutresRB.html#ManageNameExt'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'ManageNameExt.app'
end
