cask :v1 => 'sookasa' do
  version '3.7.2'
  sha256 '27192c3b1bc5a199071656e1f1e937d21ddd1c2f027c70768192e06f63ce67ee'

  url 'https://d2rs8uj3cnos4.cloudfront.net/mac-apps/releases/Sookasa_3.7.2.pkg'
  homepage 'https://www.sookasa.com'
  license :commercial

  pkg 'Sookasa_3.7.2.pkg'
  uninstall :quit => 'com.sookasa.Sookasa'
  uninstall :pkgutil => 'com.sookasa.Sookasa'
end
