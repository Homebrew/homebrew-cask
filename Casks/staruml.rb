cask :v1 => 'staruml' do
  version '2.1.2'
  sha256 '0120a9025b44f8515bf49bbbd8f79f300460c9cc967e5fdaf3d9650b9879d6ec'

  url "http://staruml.io/download/release/v#{version}/StarUML-v#{version}.dmg"
  name 'StarUML'
  homepage 'http://staruml.io/'
  license :commercial

  app 'StarUML.app'
end
