cask 'alt-tab' do
  version '2.0.2'
  sha256 'ac03e7d64b048935bc5d36d8b31a27aa37931b0e8f62285d1cb227f642b16427'

  url "https://github.com/lwouis/alt-tab-macos/releases/download/v#{version}/AltTab-#{version}.zip"
  appcast 'https://github.com/lwouis/alt-tab-macos/releases.atom'
  name 'alt-tab'
  homepage 'https://github.com/lwouis/alt-tab-macos'

  depends_on macos: '>= :mojave'

  app 'AltTab.app'
end
