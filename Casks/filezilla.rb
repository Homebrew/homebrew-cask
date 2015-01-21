cask :v1 => 'filezilla' do

  if MacOS.release <= :snow_leopard
    version '3.8.1'
    sha256 '86c725246e2190b04193ce8e7e5ea89d5b9318e9f20f5b6f9cdd45b6f5c2d283'
  else
    version '3.10.0.2'
    sha256 '676abc887161c96302725defe963e5f049097339f165d19746dcfa7731620eb1'
  end

  # sourceforge.net is the official download host per the vendor homepage
  url "http://downloads.sourceforge.net/project/filezilla/FileZilla_Client/#{version}/FileZilla_#{version}_macosx-x86.app.tar.bz2"
  homepage 'https://filezilla-project.org/'
  license :oss

  app 'FileZilla.app'
  # todo verify that this does not contain user-generate content
  # zap :delete => '~/.filezilla'
end
