cask 'quicklook-pat' do
  version '1.0.0'
  sha256 '41d6d9ffb042490c93d661b95c392a341ecde42f40de6988ae944c64808aac28'

  url "https://github.com/pixelrowdies/quicklook-pat/releases/download/#{version}/PatternQuickLook.pkg"
  appcast 'https://github.com/pixelrowdies/quicklook-pat/releases.atom',
          checkpoint: 'eb2ecca2f479d5c81317810ec81c13ec47afa5bb3a553d4eb05c5c34768ef4eb'
  name 'Adobe Photoshop Patterns Quicklook Plugin'
  homepage 'https://github.com/pixelrowdies/quicklook-pat'

  pkg 'PatternQuickLook.pkg'

  uninstall pkgutil: 'de.pixelrowdies.PatternQuickLook'
end
