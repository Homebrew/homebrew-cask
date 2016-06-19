cask 'paw' do
  version '2.3.4'
  sha256 '3b998b1733cd0c2ad4aff5b9f4106ec8a2fb98bced896f9117c25f5d9f999fdf'

  url "https://luckymarmot.com/paw/download/#{version}"
  appcast "https://luckymarmot.com/api/v#{version.major}/updates/appcast",
          checkpoint: '8067da8efe004063dbfa99bd0c85e9b6cb5ee8bc3ea1fb7b8e6001a707029ade'
  name 'Paw'
  homepage 'https://luckymarmot.com/paw'
  license :commercial

  app 'Paw.app'
end
