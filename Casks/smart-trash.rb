cask 'smart-trash' do
  version '2.0.4'
  sha256 'bda00eb0197fdddacbabe3a4f3f6dada9986113d33784fc5609b490dd76df609'

  url "http://www.hyperbolicsoftware.com/programs/SmartTrash#{version.no_dots}.zip"
  name 'Smart Trash'
  homepage 'http://www.hyperbolicsoftware.com/SmartTrash.html'
  license :commercial

  container nested: "Smart Trash #{version}.dmg"

  app 'Smart Trash.app'
end
