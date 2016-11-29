cask 'skreenics' do
  version '1.0.1'
  sha256 'c4edd3cb8d066c5b5ce8ab78fe476776d04ad5b8e28eb7128bb183903f7dd8b9'

  # googleapis.com/google-code-archive-downloads/v2/code.google.com/skreenics was verified as official when first introduced to the cask
  url "https://storage.googleapis.com/google-code-archive-downloads/v2/code.google.com/skreenics/Screeniks-#{version}.zip"
  name 'Skreenics'
  homepage 'https://code.google.com/archive/p/skreenics/'

  app 'Skreenics.app'

  caveats do
    discontinued
  end
end
