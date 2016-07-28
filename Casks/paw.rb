cask 'paw' do
  version '3.0'
  sha256 '4dd023fec7c14ce36258a8860d957680f9b90ff720771e0f3bec2108de8e5748'

  # d3hevc2w7wq7nj.cloudfront.net was verified as official when first introduced to the cask
  url "https://d3hevc2w7wq7nj.cloudfront.net/paw/Paw-#{version}-3000000000.zip"
  appcast "https://paw.cloud/api/v2/updates/appcast",
          checkpoint: 'f7c2809abde7f659df292edc087d11678731f645ebc5eaf4d8a118e021398a82'
  name 'Paw'
  homepage 'https://paw.cloud'
  license :commercial

  app 'Paw.app'
end
