cask :v1 => 'sookasa' do
  version '3.9.7'
  sha256 '103aba04e26dcc09fb1ae8a0b917a328e01863cf5f37157b1d505c9d73ec1c85'

  url 'https://d2rs8uj3cnos4.cloudfront.net/mac-apps/releases/Sookasa_3.9.7.pkg'
  homepage 'https://www.sookasa.com'
  license :commercial

  pkg 'Sookasa_3.9.7.pkg'

  uninstall :quit => 'com.sookasa.Sookasa',
            :pkgutil => 'com.sookasa.Sookasa'
end
