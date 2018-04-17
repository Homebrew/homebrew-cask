cask 'cloudtv' do
  version '3.8.7'
  sha256 'c3e4119c7cbd130d35b50a5daba64a34c63b49c0da728d9d1a3efc7f9ef0d51c'

  # dl.devmate.com/com.nonoche.CloudTV was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.nonoche.CloudTV/CloudTV.dmg?v=#{version}"
  appcast 'https://updates.devmate.com/com.nonoche.CloudTV.xml',
          checkpoint: '51769677f884dfe8d46dab86e81d830eabd406731288daa8fefd2a9f5253cb77'
  name 'CloudTV'
  homepage 'https://cloudtvapp.net/'

  app 'CloudTV.app'
end
