cask :v1 => 'cog' do
  version 'r2051'
  sha256 '1cc55f718a15810cccc5141312c01079e1da230a2412e4bc66c172de7aee36fe'

  # the stable package on sourceforge is a bzip-inside-bzip that we can't handle
  url "http://cogx.org/nightly_builds/cog-#{version}.tbz"
  appcast 'http://mamburu.net/cog/stable.xml',
          :sha256 => 'f5770d73ad0c4a19af24cf25195c01d1cc05b937a79416fe82ead0949beee62e'
  homepage 'http://cogx.org'
  license :unknown    # todo: improve this machine-generated value

  app 'Cog.app'
end
