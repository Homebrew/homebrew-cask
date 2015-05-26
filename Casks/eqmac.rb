cask :v1 => 'eqmac' do
  version '1.3.2-b1'
  sha256 '4e810e2956f3c46b13f3a7024c58676fd54a1f2d02e63252f946c53479ce43a1'

  url "http://eqmac.hulse.id.au/sites/default/files/downloads/Mount-#{version}.app_.zip"
  name 'EQMac'
  homepage 'http://eqmac.hulse.id.au/'
  license :unknown

  # Renamed for clarity: app name is inconsistent with the branding on the website, and will be corrected in the next version.
  # Original discussion: https://github.com/caskroom/homebrew-cask/pull/8438
  app "Mount-#{version}.app", :target => 'EQMac.app'
end
