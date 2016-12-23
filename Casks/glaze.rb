cask 'glaze' do
  version '0.2.1'
  sha256 'f6c19d5fdc3422bb26b9c630bf756fba0891c1b606acb3ebd6b0a1648902e15a'

  url "https://github.com/adamsiwiec/glaze/releases/download/v#{version}/glaze-#{version}.dmg"
  name 'Glaze'
  homepage 'https://github.com/adamsiwiec/glaze'

  app 'glaze.app'
end
