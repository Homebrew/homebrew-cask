cask 'aquamacs' do
  if Hardware::CPU.is_32_bit?
    version '2.5'
    sha256 '04835075a0c2db072bc974b0e01876e4c95e89deed0485755354f2bbffc8481a'
    # github.com/davidswelt/aquamacs-emacs was verified as official when first introduced to the cask
    url "https://github.com/davidswelt/aquamacs-emacs/releases/download/Aquamacs-#{version}-final/Aquamacs-Emacs-#{version}final.tar.bz2"
  else
    version '3.2'
    sha256 '0bdbbe20afd1d2f2bc23fd583de9475a8826493fcf9fe0e4d2717353cf5f04b2'
    # github.com/davidswelt/aquamacs-emacs was verified as official when first introduced to the cask
    url "https://github.com/davidswelt/aquamacs-emacs-pre2015/releases/download/Aquamacs-#{version}/Aquamacs-Emacs-#{version}.dmg"
    appcast 'https://github.com/davidswelt/aquamacs-emacs/releases.atom',
            checkpoint: '293e1215263d78aaa2e5300356ccbfc97e6150a3db21c299a4f0de62a0028762'
  end

  name 'Aquamacs'
  homepage 'http://aquamacs.org/'
  license :gpl

  app 'Aquamacs.app'

  zap delete: '~/Library/Caches/Aquamacs Emacs'
end
