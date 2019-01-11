cask 'prepros' do
  version '6.3.0'
  sha256 '575ea35fbcbf55a421b44e9812558b88384dffc7345fa94e77e2947c90ae5fff'

  # prepros-6.nyc3.cdn.digitaloceanspaces.com was verified as official when first introduced to the cask
  url "https://prepros-6.nyc3.cdn.digitaloceanspaces.com/stable/Prepros-Mac-#{version}.zip"
  appcast 'https://prepros.io/changelog'
  name 'Prepros'
  homepage 'https://prepros.io/'

  app 'Prepros.app'
end
