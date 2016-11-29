cask 'nodeclipse' do
  version '0.17'
  sha256 '674991d7c22ea05975a76800e6e9fe9231064a09a2a2412e6ec0448676bfa2e8'

  # sourceforge.net/nodeclipse was verified as official when first introduced to the cask
  url 'https://downloads.sourceforge.net/nodeclipse/Enide-2015/7/Enide-2015-7-macosx-x64-20150706.zip'
  appcast 'https://sourceforge.net/projects/nodeclipse/rss',
          checkpoint: 'a1066f2fca3aec174f2ba3bc32609868e4f7cf68f7218bcb0bcde620f2f54918'
  name 'Nodeclipse'
  homepage 'http://www.nodeclipse.org/'

  # Renamed for clarity: app name is inconsistent with its branding.
  # Also renamed to avoid conflict with other eclipse Casks.
  # Original discussion: https://github.com/caskroom/homebrew-cask/pull/8183
  app 'Eclipse.app', target: 'Nodeclipse.app'
end
