cask 'nodeclipse' do
  version '0.17'
  sha256 '674991d7c22ea05975a76800e6e9fe9231064a09a2a2412e6ec0448676bfa2e8'

  # sourceforge.net is the official download host per the vendor homepage
  url 'http://downloads.sourceforge.net/project/nodeclipse/Enide-2015/7/Enide-2015-7-macosx-x64-20150706.zip'
  name 'Nodeclipse'
  homepage 'http://www.nodeclipse.org/'
  license :oss

  # Renamed for clarity: app name is inconsistent with its branding.
  # Also renamed to avoid conflict with other eclipse Casks.
  # Original discussion: https://github.com/caskroom/homebrew-cask/pull/8183
  app 'Eclipse.app', target: 'Nodeclipse.app'
end
