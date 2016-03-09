cask 'godot' do
  version '2.0'
  sha256 '64c6903ee35f5bd5211ec771b4457a27c58bdb212b526e73a9a59ce3cf0b6a24'

  # github.com/godotengine/godot was verified as official when first introduced to the cask
  url "https://github.com/godotengine/godot/releases/download/#{version}-stable/Godot_v#{version}_osx32.zip"
  appcast 'https://github.com/godotengine/godot/releases.atom',
          checkpoint: '120cf42e0fbc6057b07ea4b77b49ae9bf501bb88b07b58c6efd7ab9b2c0a534a'
  name 'Godot Engine'
  homepage 'http://www.godotengine.org/'
  license :mit

  app 'Godot.app'
end
