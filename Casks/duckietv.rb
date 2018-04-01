cask 'duckietv' do
  version '1.1.5'
  sha256 '9c2f72c011cd477071e51238d5bfa0c202babdd263c1e4ea6b3d4e4605da2907'

  # github.com/SchizoDuckie/DuckieTV was verified as official when first introduced to the cask
  url "https://github.com/SchizoDuckie/DuckieTV/releases/download/#{version}/DuckieTV-#{version}-OSX-x64.pkg"
  appcast 'https://github.com/SchizoDuckie/DuckieTV/releases.atom',
          checkpoint: 'e7660106640d75125840fa6d96d219a30ea65e70bcc20450f7b22bc0cdabbff1'
  name 'duckieTV'
  homepage 'https://schizoduckie.github.io/DuckieTV/'

  pkg "DuckieTV-#{version}-OSX-x64.pkg", allow_untrusted: true

  uninstall pkgutil: 'tv.duckie.base.pkg',
            delete:  [
                       '/Applicatons/duckieTV.app',
                       '~/Library/Application Support/DuckieTV-Standalone',
                     ]
end
