cask 'cljstyle' do
  version '0.12.1'
  sha256 '5847c209b691542905b1ea549eca02de89c0dbfad6959880484207773591b001'

  url "https://github.com/greglook/cljstyle/releases/download/#{version}/cljstyle_#{version}_macos.tar.gz"
  appcast 'https://github.com/greglook/cljstyle/releases.atom'
  name 'cljstyle'
  homepage 'https://github.com/greglook/cljstyle'

  binary 'cljstyle'
end
