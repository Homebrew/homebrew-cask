cask 'docear' do
  version '1.2.0.0_stable_build291'
  sha256 :no_check

  url 'http://docear.org/downloads/docear_macos.zip'
  name 'Docear'
  homepage 'https://docear.org'
  license :gpl

  app "docear_macos/docear-#{version}/Docear.app"
end
