cask 'godot' do
  version '2.0'
  sha256 '64c6903ee35f5bd5211ec771b4457a27c58bdb212b526e73a9a59ce3cf0b6a24'

  # github.com/godotengine/godot was verified as official when first introduced to the cask
  url "https://github.com/godotengine/godot/releases/download/#{version}-stable/Godot_v#{version}_osx32.zip"
  appcast 'https://github.com/godotengine/godot/releases.atom',
          checkpoint: 'd3a62349dd466efd5a41b99114c9889b43fea29f57aa5c5a125a85a088827be3'
  name 'Godot Engine'
  homepage 'http://www.godotengine.org/'
  license :mit

  app 'Godot.app'
end
