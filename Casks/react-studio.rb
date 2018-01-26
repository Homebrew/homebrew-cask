cask 'react-studio' do
  version '1.3,315'
  sha256 '356efa82b96a14133cf23cf3c6113ede482cf55143606d478b972598838b24e8'

  # s3.amazonaws.com/sc.neonto.com was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/sc.neonto.com/ReactStudio_v#{version.before_comma.no_dots}_build#{version.after_comma}.zip"
  name 'ReactStudio'
  homepage 'https://reactstudio.com/'

  app 'React Studio.app'
end
