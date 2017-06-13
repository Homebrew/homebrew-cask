cask 'mosh' do
  version '1.3.0'
  sha256 'a423fcb5aab7079e20b03cfa5e8623bb89391087dd5492d68947c89a39eee80c'

  url "https://mosh.org/mosh-#{version}.pkg"
  name 'Mosh'
  homepage 'https://mosh.org/'

  pkg "mosh-#{version}.pkg"

  uninstall pkgutil: 'edu.mit.mosh.mosh.pkg'
end
