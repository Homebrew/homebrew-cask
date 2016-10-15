cask 'eclipse-jee' do
  version '4.6.1'
  sha256 'c64da846dfb762ce6650e4d842c566a61836b14c0a77b1f5395f4f9842a66aad'

  module Utils
    def self.release
      'neon'
    end

    def self.build
      '1a'
    end
  end

  url "https://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/#{Utils.release}/#{Utils.build}/eclipse-jee-#{Utils.release}-#{Utils.build}-macosx-cocoa-x86_64.tar.gz&r=1"
  name 'Eclipse IDE for Java EE Developers'
  homepage "http://www.eclipse.org/downloads/packages/release/#{Utils.release}/#{Utils.build}"

  depends_on macos: '>= :leopard'
  depends_on arch: :x86_64

  app 'Eclipse.app'

  caveats do
    depends_on_java
  end
end
