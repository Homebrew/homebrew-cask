cask :v1 => 'filezilla' do

  if MacOS.release <= :snow_leopard
    version '3.8.1'
    sha256 '86c725246e2190b04193ce8e7e5ea89d5b9318e9f20f5b6f9cdd45b6f5c2d283'
  else
    version '3.10.0'
    sha256 '12ff3a2ecea426abce5a3d70718d13670b9042375b24ab2e78fcd582e7684815'
  end

  url "http://downloads.sourceforge.net/project/filezilla/FileZilla_Client/#{version}/FileZilla_#{version}_macosx-x86.app.tar.bz2"
  homepage 'https://filezilla-project.org/'
  license :oss

  app 'FileZilla.app'
  # todo verify that this does not contain user-generate content
  # zap :delete => '~/.filezilla'
end
