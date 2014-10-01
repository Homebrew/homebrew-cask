class Kkbox < Cask
  version '5.0.10'
  sha256 '0015c867479ab836504f973dab88f93bb3c4ce4e6e6c7287d7fdbfe3af565a50'

  url "http://download.kkbox.com/files/KKBOX-#{version}-ca460d0.dmg"
  homepage 'http://www.kkbox.com/'
  license :unknown

  app 'KKBOX.app'
end
