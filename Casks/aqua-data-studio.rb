cask 'aqua-data-studio' do
  version '17.0.11'
  sha256 '0c252f39f662542066793f9d57712740fae39e29ef45469521e21c9de53e0885'

  url "http://www.aquafold.com/download/v#{version.major}.0.0/osx/ads-osx-#{version}.tar.gz"
  appcast 'http://www.aquafold.com/download/',
          checkpoint: '03f771b8d51c558dbbd33b15b590f0820f8e05f66a7afdad346d8efb2c30a75e'
  name 'Aquafold Aqua Data Studio'
  homepage 'http://www.aquafold.com/aquadatastudio.html'

  app 'Aqua Data Studio.app'
end
