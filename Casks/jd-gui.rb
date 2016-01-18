cask 'jd-gui' do
  version '1.4.0'
  sha256 '9e0629cf3108f0ddd20c1244aaa75c4517c89e7e4abe626e6441b6d02b1b3ff3'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/java-decompiler/jd-gui/releases/download/v#{version}/jd-gui-osx-#{version}.tar"
  appcast 'https://github.com/java-decompiler/jd-gui/releases.atom',
          checkpoint: 'f8a80baa0ddd18f8fac56659f3fd7256c9afe140c621f606d83844916cd490f2'
  name 'JD-GUI'
  homepage 'http://jd.benow.ca/'
  license :gpl

  app "jd-gui-osx-#{version}/JD-GUI.app"
end
