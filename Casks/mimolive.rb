cask 'mimolive' do
  version '4.1.1-25483'
  sha256 '401d1d798d3a4cfb0f0322e6e18cd614bc1fef4b9b960560cd5670dda6303d12'

  url "https://cdn.boinx.com/software/mimolive/Boinx_mimoLive_#{version}.app.zip"
  appcast 'https://boinx.com/d/connect/histories/mimolive',
          checkpoint: 'a076bee0843f59cf14ed861337a710e3e48b3045246343fc7254064f6ea87c9b'
  name 'mimoLive'
  homepage 'https://boinx.com/mimolive/'

  depends_on macos: '>= :el_capitan'

  app 'mimoLive.app'
end
