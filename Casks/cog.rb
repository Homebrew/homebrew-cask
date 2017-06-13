cask 'cog' do
  version 'r2068'
  sha256 '9c9ad68bf9fa29da31f69bb19e45fce694e5122a6360d275eeaf2b0e4b58f33f'

  # the stable package on sourceforge is a bzip-inside-bzip that we can't handle

  url "http://cogx.org/nightly_builds/cog-#{version}.tbz"
  appcast 'http://mamburu.net/cog/stable.xml',
          checkpoint: 'f5770d73ad0c4a19af24cf25195c01d1cc05b937a79416fe82ead0949beee62e'
  name 'Cog'
  homepage 'https://cogx.org/'

  app 'Cog.app'
end
