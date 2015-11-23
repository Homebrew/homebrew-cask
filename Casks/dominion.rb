cask :v1 => 'dominion' do
  version '2.0.44.2'
  sha256 '3a6fecab499a5b1d1f4a637d2418a5c8bf5f627eafb59416c288124aeabc55a1'

  url 'https://dominion.makingfun.co/Dominion%202.0.44.2.pkg'
  name 'Dominion'
  homepage 'https://www.playdominion.com/'
  license :freemium
  depends_on :macos => '>= 10.7'

  pkg 'Dominion 2.0.44.2.pkg'
  uninstall :pkgutil => 'com.makingfun.dominion'
  uninstall :delete => '/Applications/Dominion.app'
end
