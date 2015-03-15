cask :v1 => 'filezilla' do

  if MacOS.release <= :snow_leopard
    version '3.8.1'
    sha256 '86c725246e2190b04193ce8e7e5ea89d5b9318e9f20f5b6f9cdd45b6f5c2d283'
  else
    version '3.10.2'
    sha256 '7a225cac2a015111e20e9b869c454dd07ff82bb0e8615f8a4102b4ff6d8c73f6'
  end

  # sourceforge.net is the official download host per the vendor homepage
  url "http://downloads.sourceforge.net/project/filezilla/FileZilla_Client/#{version}/FileZilla_#{version}_macosx-x86.app.tar.bz2"
  name 'FileZilla'
  homepage 'https://filezilla-project.org/'
  license :gpl

  app 'FileZilla.app'

  zap :delete => [
                  '~/Library/Saved Application State/de.filezilla.savedState',
                  '~/Library/Preference/de.filezilla.plist',
                 ],
      :rmdir => '~/.config/filezilla'

end
