cask 'kindle-comic-creator' do
  version :latest
  sha256 :no_check

  # kc2.s3.amazonaws.com was verified as official when first introduced to the cask
  url 'https://kc2.s3.amazonaws.com/KindleComicCreatorInstall.dmg'
  name 'Kindle Comic Creator'
  homepage 'https://www.amazon.com/gp/feature.html?ie=UTF8&docId=1001103761'

  depends_on macos: '>= 10.9'
  depends_on cask: 'kindle-previewer'

  pkg 'Kindle Comic Creator.pkg'

  uninstall pkgutil: [
                       'com.amazon.kc2.kindleComicCreator.KindleComicCreator.pkg',
                       'com.amazon.kc2.kindleComicCreator.EULA.pkg',
                       'com.amazon.kc2.kindleComicCreator.EULA_JA.pkg',
                       'com.amazon.kc2.kindleComicCreator.EULA_NL.pkg',
                       'com.amazon.kc2.kindleComicCreator.EULA_DE.pkg',
                       'com.amazon.kc2.kindleComicCreator.EULA_CN.pkg',
                       'com.amazon.kc2.kindleComicCreator.EULA_RU.pkg',
                       'com.amazon.kc2.kindleComicCreator.EULA_ES.pkg',
                       'com.amazon.kc2.kindleComicCreator.EULA_IT.pkg',
                       'com.amazon.kc2.kindleComicCreator.EULA_PT.pkg',
                       'com.amazon.kc2.kindleComicCreator.EULA_FR.pkg',
                       'com.amazon.kc2.kindleComicCreator.EULA_NL.pkg',
                       'com.amazon.kc2.kindleComicCreator.KC2LegalNotices.pkg',
                     ]
end
