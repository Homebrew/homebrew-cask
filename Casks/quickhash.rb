cask 'quickhash' do
  version '2.8.4,639'
  sha256 '1c8208d3714cb8eeb30a6da6c25175379da5a817c447b91a5613347ed1b04cb4'

  url "http://quickhash-gui.org/download/quickhash-v#{version.before_comma.dots_to_hyphens}-for-apple-mac-osx/?wpdmdl=#{version.after_comma}"
  name 'Quickhash'
  homepage 'https://quickhash-gui.org/'

  app 'QuickHash.app'
end
