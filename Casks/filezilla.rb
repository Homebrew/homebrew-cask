class Filezilla < Cask
  version '3.9.0.1'
  sha256 'e9de997630265ad17bd1006624f76a20276da45578a9ffa839d4326eed84b17a'

  url "https://downloads.sourceforge.net/project/filezilla/FileZilla_Client/#{version}/FileZilla_#{version}_macosx-x86.app.tar.bz2"
  homepage 'https://filezilla-project.org/'

  link 'FileZilla.app'
end
