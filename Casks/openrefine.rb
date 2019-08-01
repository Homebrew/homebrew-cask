cask 'openrefine' do
  version '3.2'
  sha256 'acf41ff8627036515cf9a11f7a42af6127ca8e107bb872c388e9252d1f107d87'

  # github.com/OpenRefine/OpenRefine was verified as official when first introduced to the cask
  url "https://github.com/OpenRefine/OpenRefine/releases/download/#{version}/openrefine-mac-#{version}.dmg"
  appcast 'https://github.com/OpenRefine/OpenRefine/releases.atom'
  name 'OpenRefine'
  homepage 'http://openrefine.org/'

  app 'OpenRefine.app'
end
