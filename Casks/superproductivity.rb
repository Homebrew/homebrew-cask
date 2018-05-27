cask 'superproductivity' do
  version '1.10.38'
  sha256 '9cf85138a3ae67016148b5d38fa92233e349172b84b02efbf94785fd3a72b974'

  # github.com/johannesjo/super-productivity was verified as official when first introduced to the cask
  url "https://github.com/johannesjo/super-productivity/releases/download/v#{version}/superProductivity-#{version}-mac.zip"
  appcast 'https://github.com/johannesjo/super-productivity/releases.atom',
          checkpoint: '43aca981bfe92069b043a26a05ea1c8f7d64eb0bf070fbde1fdbf87db7a30716'
  name 'Super Productivity'
  homepage 'https://super-productivity.com/'

  app 'superProductivity.app'
end
