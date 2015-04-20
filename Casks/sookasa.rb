cask :v1 => 'sookasa' do
  version '3.10.4'
  sha256 '660ffa75fcd648b468f08585973fd5a104560e57f122648dc91c78b354cf5109'

  url 'https://d2rs8uj3cnos4.cloudfront.net/mac-apps/releases/Sookasa_3.10.4.pkg'
  homepage 'https://www.sookasa.com'
  license :commercial

  pkg 'Sookasa_3.10.4.pkg'

  uninstall :quit => 'com.sookasa.Sookasa',
            :pkgutil => 'com.sookasa.Sookasa'
end
