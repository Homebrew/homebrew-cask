class Preform < Cask
  version '1.6.5'
  sha256 '465bd7f85a44d66d0e0bf160ed744f9d014e1acf11478e1c884a72414b7053ab'

  url "https://s3.amazonaws.com/FormlabsReleases/Release/#{version.sub(%r{\.(\d+)$},'')}/PreForm_#{version.sub(%r{\.(\d+)$},'_\1')}.dmg"
  homepage 'http://formlabs.com/en/products/preform/'
  license :unknown

  app 'PreForm.app'
end
