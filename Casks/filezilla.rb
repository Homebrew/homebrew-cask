class Filezilla < Cask
  version '3.9.0.3'
  sha256 'e7b642a6ebc5d785651c0c84477dd55e7e419d2094798205b814171c64fc7095'

  url "https://downloads.sourceforge.net/project/filezilla/FileZilla_Client/#{version}/FileZilla_#{version}_macosx-x86.app.tar.bz2"
  homepage 'https://filezilla-project.org/'

  link 'FileZilla.app'
end
