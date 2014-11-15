cask :v1 => 'google-refine' do
  version '2.5-r2407'
  sha256 '16454020c402fa0ab0fedfff44b63e8f027194723ae6ade9b5bb5b9223c68fcc'

  url "https://github.com/OpenRefine/OpenRefine/releases/download/2.5/google-refine-#{version}.dmg"
  homepage 'http://openrefine.org/'
  license :oss

  app 'Google Refine.app'

  zap :delete => '~/Library/Application Support/Google/Refine',
      :rmdir  => '~/Library/Application Support/Google/'
end
