cask 'eclipse-ptp' do
  version '4.6.1,neon:1a'
  sha256 '6bf6d6ceac99616a621f30b63ac720299d6264de439603b259148d7a2f61a311'

  url "https://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/#{version.after_comma.before_colon}/#{version.after_colon}/eclipse-parallel-#{version.after_comma.before_colon}-#{version.after_colon}-macosx-cocoa-x86_64.tar.gz&r=1"
  name 'Eclipse for Parallel Application Developers'
  homepage 'https://eclipse.org/'

  depends_on macos: '>= :leopard'
  depends_on arch: :x86_64

  app 'Eclipse.app'
end
