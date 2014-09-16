class Filezilla < Cask
  version '3.9.0.5'
  sha256 '805e7a83faa13235d15eeab572eab06d6033901a196ba3ebcf753793f81219cd'

  url "https://downloads.sourceforge.net/project/filezilla/FileZilla_Client/#{version}/FileZilla_#{version}_macosx-x86.app.tar.bz2"
  homepage 'https://filezilla-project.org/'

  app 'FileZilla.app'
  # todo verify that this does not contain user-generate content
  # zap :files => '~/.filezilla'
end
