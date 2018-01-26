cask 'gpxsee' do
  version '4.19'
  sha256 '73079c39947a4c386bd5259482538679dfb8acdb3c1affdfb2b68e078fd6c72f'

  # sourceforge.net/gpxsee/Mac%20OS%20X was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/gpxsee/Mac%20OS%20X/GPXSee-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/gpxsee/rss?path=/Mac%20OS%20X',
          checkpoint: '603494ac861bab6bbf950ba1333c0d33156ca5f64e421e14e76dbbacf699af12'
  name 'GPXSee'
  homepage 'http://www.gpxsee.org/'

  app 'GPXSee.app'
end
