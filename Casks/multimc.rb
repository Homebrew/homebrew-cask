cask 'multimc' do
  version '0.5.1-908'
  sha256 'cf963b590b1be1be57fde76cc1b5a2bd5af99c041b34f82549ed3efe4868eb4e'

  # github.com/MultiMC/MultiMC5 was verified as official when first introduced to the cask
  url "https://github.com/MultiMC/MultiMC5/releases/download/#{version.major_minor_patch}/mmc-stable-osx64-#{version}.tar.gz"
  appcast 'https://github.com/MultiMC/MultiMC5/releases.atom',
          checkpoint: 'd7e8647e53c6dcb5d1ce8b9850641a9928e5ed1b44e72d909a78077882352a5e'
  name 'Multi MC'
  homepage 'https://multimc.org/'

  app "mmc-stable-osx64-#{version}/MultiMC.app"
end
