class Cog < Cask
  version 'nightly_builds_2051'
  sha256 '1cc55f718a15810cccc5141312c01079e1da230a2412e4bc66c172de7aee36fe'

  url 'http://cogx.org/nightly_builds/cog-r2051.tbz'
  appcast 'http://mamburu.net/cog/stable.xml',
          :sha256 => 'f5770d73ad0c4a19af24cf25195c01d1cc05b937a79416fe82ead0949beee62e'
  homepage 'http://cogx.org'
  license :unknown

  app 'Cog.app'
end
