cask 'eclipse-cpp' do
  version '4.6.0'
  sha256 '200144b4ca54d0e77572c66d249c3138e4186bb22f9404988c2cc6ea79d98f16'

  url 'https://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/neon/R/eclipse-cpp-neon-R-macosx-cocoa-x86_64.tar.gz&r=1'
  name 'Eclipse IDE for C/C++ Developers'
  homepage 'https://eclipse.org/'
  license :eclipse

  depends_on macos: '>= :leopard'
  depends_on arch: :x86_64

  app 'Eclipse.app'
end
