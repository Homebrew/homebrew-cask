cask :v1 => 'octohub' do
  version '0.1'
  sha256 '46298c2de103b54507c7baa6ea837af4c35919f7e44eb394dfd7708b3d42075e'

  url 'https://rink.hockeyapp.net/api/2/apps/8e6427d1be6e591e851b554c57a77dfc/app_versions/1?format=zip&avtoken=5b4f5de421481729bbd63cb2ee4a2509d75ddcd2'
  name 'Octohub'
  homepage 'http://octohubapp.com/'
  license :unknown

  app 'Octohub.app'
end
