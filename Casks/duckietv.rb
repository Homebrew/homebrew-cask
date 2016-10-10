cask 'duckietv' do
  version '1.1.3'
  sha256 '4c4ee965cf39db6333dad65fe2b56ebf412af490a1b091487ef5d1fe8989b359'

  # github.com/SchizoDuckie/DuckieTV was verified as official when first introduced to the cask
  url "https://github.com/SchizoDuckie/DuckieTV/releases/download/#{version}/DuckieTV-#{version}-OSX-x64.pkg"
  appcast 'https://github.com/SchizoDuckie/DuckieTV/releases.atom',
          checkpoint: 'f11c61dde34cfe2a9f3e7150122340aa3f6680a634e00851066fccd4668e0103'
  name 'duckieTV'
  homepage 'https://schizoduckie.github.io/DuckieTV/'

  pkg "DuckieTV-#{version}-OSX-x64.pkg", allow_untrusted: true

  uninstall pkgutil: 'tv.duckie.base.pkg',
            delete:  [
                       '/Applicatons/duckieTV.app',
                       '~/Library/Application Support/DuckieTV-Standalone',
                     ]
end
