cask 'cog' do
  version 'r2068'
  sha256 '9c9ad68bf9fa29da31f69bb19e45fce694e5122a6360d275eeaf2b0e4b58f33f'

  # the stable package on sourceforge is a bzip-inside-bzip that we can't handle

  url "https://cogx.org/nightly_builds/cog-#{version}.tbz"
  appcast 'https://mamburu.net/cog/stable.xml'
  name 'Cog'
  homepage 'https://cogx.org/'

  app 'Cog.app'
end
