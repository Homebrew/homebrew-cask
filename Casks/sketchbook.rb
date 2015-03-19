cask :v1 => 'sketchbook' do
  version '7.1.1'
  sha256 '9ea98fff3130335a76e9474fd8222e7b0f9e05a53a05149b0bd0c949a1703d1e'

  url 'https://cdn.sketchbook.com/mac/SketchBook_v7.1.1_mac.dmg'
  name 'Autodesk SketchBook'
  homepage 'https://www.sketchbook.com/desktop'
  license :closed

  pkg 'SketchBook_v7.1.1_mac.pkg'
end
