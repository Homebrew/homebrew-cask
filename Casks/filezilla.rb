class Filezilla < Cask
  version '3.9.0.2'
  sha256 '9f1509e0ed1a7cb05260be8a771a4e94e7e8e4d50a4e5f24ad22f8509fb4c71b'

  url "https://downloads.sourceforge.net/project/filezilla/FileZilla_Client/#{version}/FileZilla_#{version}_macosx-x86.app.tar.bz2"
  homepage 'https://filezilla-project.org/'

  link 'FileZilla.app'
end
