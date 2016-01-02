cask 'google-refine' do
  version '2.5-r2407'
  sha256 '16454020c402fa0ab0fedfff44b63e8f027194723ae6ade9b5bb5b9223c68fcc'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/OpenRefine/OpenRefine/releases/download/2.5/google-refine-#{version}.dmg"
  appcast 'https://github.com/OpenRefine/OpenRefine/releases.atom',
          :sha256 => '59a4567d43b4d1324b972028e35e407279594f787552f2a201b2cb5d4a8f17bb'
  name 'OpenRefine'
  homepage 'http://openrefine.org/'
  license :bsd

  app 'Google Refine.app'

  zap :delete => '~/Library/Application Support/Google/Refine',
      :rmdir  => '~/Library/Application Support/Google/'
end
