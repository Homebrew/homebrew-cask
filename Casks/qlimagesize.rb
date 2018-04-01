cask 'qlimagesize' do
  version :latest
  sha256 :no_check

  # repo.whine.fr was verified as official when first introduced to the cask
  url 'https://repo.whine.fr/qlImageSize.pkg'
  name 'qlImageSize'
  homepage 'https://github.com/Nyx0uf/qlImageSize'

  pkg 'qlImageSize.pkg'

  postflight do
    set_ownership [
                    '~/Library/QuickLook/qlImageSize.qlgenerator',
                    '~/Library/Spotlight/mdImageSize.mdimporter',
                  ]
  end

  uninstall delete:  [
                       '~/Library/QuickLook/qlImageSize.qlgenerator',
                       '~/Library/Spotlight/mdImageSize.mdimporter',
                     ],
            pkgutil: 'fr.whine.qlimagesize.pkg'

  caveats do
    reboot
  end
end
