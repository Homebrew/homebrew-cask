cask 'chunky' do
  version '1.4.1'
  sha256 'a7f90f168f5545035297eaa927b1f4a166048335b1e8e978c44bb3905fa1f893'

  # launchpad.net/chunky was verified as official when first introduced to the cask
  url "https://launchpad.net/chunky/#{version.major_minor}/#{version}/+download/Chunky-#{version}.dmg"
  appcast 'https://github.com/llbit/chunky/releases.atom',
          checkpoint: '390bef34305d8cb8d7095925cb94471c8273ef783a9d59cba3d0828f5e92ed29'
  name 'Chunky'
  homepage 'https://chunky.llbit.se/'

  app 'Chunky.app'

  caveats do
    depends_on_java
  end
end
