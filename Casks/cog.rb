cask 'cog' do
  version 'r2051'
  sha256 '1cc55f718a15810cccc5141312c01079e1da230a2412e4bc66c172de7aee36fe'

  # the stable package on sourceforge is a bzip-inside-bzip that we can't handle

  url "https://cogx.org/nightly_builds/cog-#{version}.tbz"
  appcast 'https://mamburu.net/cog/stable.xml',
          checkpoint: 'f5770d73ad0c4a19af24cf25195c01d1cc05b937a79416fe82ead0949beee62e'
  name 'Cog'
  homepage 'https://cogx.org/'
  license :gpl

  app 'Cog.app'
end
