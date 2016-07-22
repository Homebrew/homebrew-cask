cask 'beesoft' do
  version '3.12.1'
  sha256 '8b50dc85833870dc93dd7f59581557e6a58082e10c60f676b437a7287b8189f5'

  url 'https://www.beeverycreative.com/public/software/BEESOFT/BEESOFT-3.12.1/Mac-BEESOFT-3.12.1.pkg'
  name 'Beesoft'
  homepage 'https://beeverycreative.com/beesoft/'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  pkg 'Mac-BEESOFT-3.12.1.pkg'

  uninstall pkgutil: 'com.beesoft.*',
            delete:  '/Applications/beesoft.app'
end
