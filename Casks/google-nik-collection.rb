cask 'google-nik-collection' do
  version '1.2.11'
  sha256 '7a06f90c8c6a9f09dc882dfb7a84cd4d97dae39e064540ecc2f5daa87569df2b'

  url 'https://dl.google.com/edgedl/photos/nikcollection-full-#{version}.dmg'
  name 'Google Nik Collection'
  homepage 'https://www.google.com/nikcollection/'
  license :commercial

  installer manual: 'Nik Collection.app'
end
