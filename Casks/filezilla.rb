cask :v1 => 'filezilla' do
  version '3.9.0.6'
  sha256 '9486be1f5dec41df8ef1b60893ca612e6791b8d98609c6b9e42ced977210d15b'

  url "https://downloads.sourceforge.net/project/filezilla/FileZilla_Client/#{version}/FileZilla_#{version}_macosx-x86.app.tar.bz2"
  homepage 'https://filezilla-project.org/'
  license :oss

  app 'FileZilla.app'
  # todo verify that this does not contain user-generate content
  # zap :delete => '~/.filezilla'
end
