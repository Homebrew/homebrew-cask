cask 'superproductivity' do
  version '5.5.2'
  sha256 'b4ecbe2342a2b28c3f39e7d5476dc5b02ceb22335247109c2ea9cb3bcf4441ef'

  # github.com/johannesjo/super-productivity/ was verified as official when first introduced to the cask
  url "https://github.com/johannesjo/super-productivity/releases/download/v#{version}/superProductivity-#{version}-mac.zip"
  appcast 'https://github.com/johannesjo/super-productivity/releases.atom'
  name 'Super Productivity'
  homepage 'https://super-productivity.com/'

  app 'superProductivity.app'
end
