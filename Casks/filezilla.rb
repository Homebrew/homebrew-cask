cask :v1 => 'filezilla' do

  if MacOS.release <= :snow_leopard
    version '3.8.1'
    sha256 '86c725246e2190b04193ce8e7e5ea89d5b9318e9f20f5b6f9cdd45b6f5c2d283'
  else
    version '3.10.0'
    sha256 '5334f2ed4a5b6b6666a125aaedd0d4f79b4410bfcda90e609f56656d4ffdb7f3'
  end

  url "http://downloads.sourceforge.net/project/filezilla/FileZilla_Client/#{version}/FileZilla_#{version}_macosx-x86.app.tar.bz2"
  homepage 'https://filezilla-project.org/'
  license :oss

  app 'FileZilla.app'
  # todo verify that this does not contain user-generate content
  # zap :delete => '~/.filezilla'
end
