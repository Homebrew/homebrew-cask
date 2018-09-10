cask 'phocus' do
  version '3.3.6,2018.05'
  sha256 '1bed922bae1e0bf9da2d24b17af026566f5c58b5d3c8d596929176d87c46c610'

  url "http://static.hasselblad.com/#{version.after_comma.dots_to_slashes}/Phocus-#{version.before_comma}.dmg"
  name 'Hasselblad Phocus'
  homepage 'https://www.hasselblad.com/software/phocus'

  app 'Phocus.app'
end
