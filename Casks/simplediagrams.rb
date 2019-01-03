cask 'simplediagrams' do
  version '4.0.28'
  sha256 'f8878cae6a20f068c04218cadf576a5076c3e1bc4fc82e86645831d11f9045e7'

  url "https://www.simplediagrams.com/download/simplediagrams_installer_#{version.dots_to_underscores}.dmg"
  name 'SimpleDiagrams'
  homepage 'https://www.simplediagrams.com/'

  app "SimpleDiagrams#{version.major}.app"
end
