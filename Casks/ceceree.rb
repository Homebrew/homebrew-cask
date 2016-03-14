cask 'ceceree' do
  if MacOS.release >= :yosemite
    version '1.2.1'
    sha256 'b2038654c48fe5a6a4a4792471853ac05dead5964c0dd44ba7e786b569a920da'
  else
    # Unusual case: there is no fall-through.  The software will stop
    # working, or is dangerous to run, on the next OS X release.
  end

  # dl.devmate.com was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.appiculous.Ceceree/Ceceree.zip"
  name 'Ceceree'
  homepage 'https://ceceree.com/'
  license :commercial

  app 'Ceceree.app'
end
