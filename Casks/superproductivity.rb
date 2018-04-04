cask 'superproductivity' do
  version '1.10.8'
  sha256 '4bd98eec162924dbb719763e55a2505780d5e58698b77433e20562b0967c66f7'

  # github.com/johannesjo/super-productivity was verified as official when first introduced to the cask
  url "https://github.com/johannesjo/super-productivity/releases/download/v#{version}/superProductivity-#{version}-mac.zip"
  appcast 'https://github.com/johannesjo/super-productivity/releases.atom',
          checkpoint: '2b692d28063a99035e339aa57f1e8086c70e50d81520648195af6b7348c43bd1'
  name 'Super Productivity'
  homepage 'https://super-productivity.com/'

  app 'superProductivity.app'
end
