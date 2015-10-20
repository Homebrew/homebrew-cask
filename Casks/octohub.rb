cask :v1 => 'octohub' do
  version '0.5'
  sha256 '62e530fc7f7acf4374b44dc4e637f479deacc475016dba4f7994b236022a4e1f'

  # hockeyapp.net is the official download host per the vendor homepage
  url 'https://rink.hockeyapp.net/api/2/apps/8e6427d1be6e591e851b554c57a77dfc/app_versions/6?format=zip&avtoken=d9d093695c89e51fb1ae75257e7e93fefa8e8f05'
  name 'Octohub'
  homepage 'http://octohubapp.com/'
  license :gratis

  app 'Octohub.app'

  depends_on :macos => '>= 10.10'
end
