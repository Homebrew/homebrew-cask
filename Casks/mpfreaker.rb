cask 'mpfreaker' do
  version '1.9.7'
  sha256 '8313c7e89a6c41c2a5e8dab77e124b84f1c47f1652e6da534c38d42aaae772f4'

  url 'http://www.lairware.com/download/MPFreaker.dmg'
  appcast 'http://lwupdate.dyndns.org/mpfreaker.xml',
          checkpoint: '1a4dc76d3c4c01cfeb1c66742a2145a7c6134ecfed00c0c758a7dc8a10f8047d'
  name 'MPFreaker'
  homepage 'http://www.lairware.com/mpfreaker/'

  app 'MPFreaker.app'
end
