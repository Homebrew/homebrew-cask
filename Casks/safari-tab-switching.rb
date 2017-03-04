cask 'safari-tab-switching' do
  version '1.2.8'
  sha256 'af604769a572939a41e9c7ab33efd6acc81cc8efda5a68782bec744fd3f51176'

  url "https://github.com/rs/SafariTabSwitching/releases/download/#{version}/Safari.Tab.Switching-#{version}.zip"
  appcast 'https://github.com/rs/SafariTabSwitching/releases.atom',
          checkpoint: '8f472627f4f0c83a4d91e0c3b54ba23abe7a8ad907c05c8c1c4902ae4bb979d6'
  name 'Safari Tab Switching'
  homepage 'https://github.com/rs/SafariTabSwitching'

  pkg "Safari Tab Switching-#{version}.pkg"

  uninstall pkgutil: 'net.rhapsodyk.SafariTabSwitching.pkg'
end
