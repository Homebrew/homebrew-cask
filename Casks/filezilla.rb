cask :v1 => 'filezilla' do
  if MacOS.release <= :snow_leopard
    version '3.8.1'
    sha256 '86c725246e2190b04193ce8e7e5ea89d5b9318e9f20f5b6f9cdd45b6f5c2d283'
  else
    version '3.9.0.6'
    sha256 '9486be1f5dec41df8ef1b60893ca612e6791b8d98609c6b9e42ced977210d15b'
  end
  
  url "http://downloads.sourceforge.net/project/filezilla/FileZilla_Client/#{version}/FileZilla_#{version}_macosx-x86.app.tar.bz2"
  homepage 'https://filezilla-project.org/'
  license :oss

  app 'FileZilla.app'
  # todo verify that this does not contain user-generate content
  # zap :delete => '~/.filezilla'
end
