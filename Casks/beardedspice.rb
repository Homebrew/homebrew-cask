cask :v1 => 'beardedspice' do
  version :latest
  sha256 :no_check

  # github.com is the official download host per the vendor homepage
  url "https://raw.github.com/beardedspice/beardedspice/distr/publish/releases/BeardedSpice-latest.zip"
  appcast 'https://github.com/beardedspice/beardedspice/releases.atom'
  name 'BeardedSpice'
  homepage 'http://www.beardedspice.com'
  license :oss

  app 'BeardedSpice.app'
end
