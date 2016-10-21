cask 'eclipse-java' do
  version '4.6.1,neon:1a'
  sha256 'b58ca0f98a391bc0856e313ec33f30168dc17dec94012d9760f9f33060f22187'

  url "https://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/#{version.after_comma.before_colon}/#{version.after_colon}/eclipse-java-#{version.after_comma.before_colon}-#{version.after_colon}-macosx-cocoa-x86_64.tar.gz&r=1"
  name 'Eclipse IDE for Java Developers'
  homepage 'https://eclipse.org/'

  depends_on macos: '>= :leopard'
  depends_on arch: :x86_64

  app 'Eclipse.app'
end
