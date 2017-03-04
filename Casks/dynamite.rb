cask 'dynamite' do
  version '3.2.3'
  sha256 '03bd8a2cad025eb443376b96fe74998c3469c2c4be11f7493ffe909a65c4816f'

  url "https://mediaatelier.com/DynaMite3/DynaMite_#{version}.zip"
  name 'DynaMite'
  homepage 'https://www.mediaatelier.com/DynaMite3/'

  depends_on macos: '>= :mavericks'

  app 'DynaMite.app'
end
