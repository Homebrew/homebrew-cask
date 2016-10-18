cask 'hachidori' do
  version '1.1.8'
  sha256 'f97371c885af817177f4660232287176777e17092c0a25a9d1a74de8b31c0e52'

  # github.com/chikorita157/hachidori was verified as official when first introduced to the cask
  url "https://github.com/chikorita157/hachidori/releases/download/#{version}/Hachidori-#{version}.zip"
  appcast 'https://github.com/chikorita157/hachidori/releases.atom',
          checkpoint: 'f72e2b4819b37d77f73496453f1d91398d2f677314c9492b9db3b3c927c8c0e5'
  name 'Hachidori'
  homepage 'http://hachidori.ateliershiori.moe'

  app 'Hachidori.app'
end
