cask 'chirp-daily' do
  version '20170222'
  sha256 'ec3d82f04e88922fb89b1ee4515623aa3aabbb2a1c4184797315ac4db126fdb7'

  url "http://trac.chirp.danplanet.com/chirp_daily/LATEST/chirp-daily-#{version}.app.zip"
  name 'CHIRP'
  homepage 'http://chirp.danplanet.com/projects/chirp/wiki/Home'

  depends_on cask: 'kk7ds-python-runtime'

  app "chirp-daily-#{version}.app"
end
