cask 'boop' do
  version '1.0.0'
  sha256 'f04b3cbb9659a0879c90b915163c8278a6106bc75d82465a8cd8ce6fef62705c'

  # github.com/IvanMathy/Boop was verified as official when first introduced to the cask
  url "https://github.com/IvanMathy/Boop/releases/download/#{version}/Boop.zip"
  appcast 'https://github.com/IvanMathy/Boop/releases.atom'
  name 'Boop'
  homepage 'https://boop.okat.best/'

  depends_on macos: '>= :mojave'

  app 'Boop.app'
end
