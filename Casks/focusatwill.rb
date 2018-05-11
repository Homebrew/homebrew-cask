cask 'focusatwill' do
  version '1.4.0'
  sha256 'f8e9ca38e7bc893cf515f213ba6f9fd97d34a62a278bda56a8d49c18233c9a76'

  # faw-desktop.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://faw-desktop.s3.amazonaws.com/focusatwill-#{version}.dmg"
  name 'Focus@Will'
  homepage 'https://www.focusatwill.com/'

  app 'focusatwill.app'
end
