cask 'starlogo-tng' do
  version '1.5'
  sha256 '6abe147fcfe02ad6669e0c1e5e5105dceab37fd175aa83917511ef610021098c'

  url "http://web.mit.edu/mitstep/starlogo-tng/download/version#{version.dots_to_hyphens}/tngmavericks.dmg"
  name 'StarLogo TNG'
  homepage 'http://web.mit.edu/mitstep/starlogo-tng/download/index.html'

  suite "StarLogo TNG #{version} Mac"
end
