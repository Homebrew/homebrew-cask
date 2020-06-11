cask 'frhelper' do
  version '3.9.6,2020-04-27'
  sha256 'ec638576b929dfd9c2637b5dd152c59fc05812bdfa670c2419d056e329c6e44b'

  # static.frdic.com/ was verified as official when first introduced to the cask
  url "https://static.frdic.com/pkg/fhmac.dmg?v=#{version.after_comma}",
      user_agent: :fake
  appcast 'https://www.eudic.net/v4/fr/app/download',
          must_contain: version.after_comma
  name 'Frhelper'
  name '法语助手'
  homepage 'https://www.eudic.net/v4/fr/app/frhelper'

  app 'Frhelper.app'
end
