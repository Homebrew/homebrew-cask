cask :v1 => 'safari-tab-switching' do
  version '1.2.8'
  sha256 'af604769a572939a41e9c7ab33efd6acc81cc8efda5a68782bec744fd3f51176'

  url "https://github.com/rs/SafariTabSwitching/releases/download/#{version}/Safari.Tab.Switching-#{version}.zip"
  appcast 'https://github.com/rs/SafariTabSwitching/releases.atom'
  name 'Safari Tab Switching'
  homepage 'https://github.com/rs/SafariTabSwitching'
  license :oss

  pkg "Safari Tab Switching-#{version}.pkg"

  uninstall :pkgutil => 'net.rhapsodyk.SafariTabSwitching.pkg'
end
