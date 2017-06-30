cask 'fits' do
  version '1.1.1'
  sha256 '7b2797cf6e27da5937a582a94d717cab41d3d20e488d0a6e2713af75d11caf41'

  # projects.iq.harvard.edu/files/fits/files was verified as official when first introduced to the cask
  url "https://projects.iq.harvard.edu/files/fits/files/fits-#{version}.zip"
  name 'FITS'
  homepage 'http://fitstool.org/'

  binary "fits-#{version}/fits.sh"

  caveats do
    depends_on_java('7+')
  end
end
