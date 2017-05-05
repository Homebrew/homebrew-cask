cask 'duckietv' do
  version '1.1.4'
  sha256 '93516a16197256d05c7a575c3a6932b9384ee8c1cfc41afe103d9fdb2a0dda5f'

  # github.com/SchizoDuckie/DuckieTV was verified as official when first introduced to the cask
  url "https://github.com/SchizoDuckie/DuckieTV/releases/download/#{version}/DuckieTV-#{version}-OSX-x64.pkg"
  appcast 'https://github.com/SchizoDuckie/DuckieTV/releases.atom',
          checkpoint: 'aa8437be4c7e2b850a5538c56e75c1c04ff2cab08ecff1867997c7765e8a5c99'
  name 'duckieTV'
  homepage 'https://schizoduckie.github.io/DuckieTV/'

  pkg "DuckieTV-#{version}-OSX-x64.pkg", allow_untrusted: true

  uninstall pkgutil: 'tv.duckie.base.pkg',
            delete:  [
                       '/Applicatons/duckieTV.app',
                       '~/Library/Application Support/DuckieTV-Standalone',
                     ]
end
