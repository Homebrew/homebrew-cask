cask 'eclipse-modeling' do
  version '4.6.2,neon:2'
  sha256 '49a1423b1d40878ee4a0721d8fe81c9a571611ff59cd629304c714ae608a8bcb'

  url "https://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/#{version.after_comma.before_colon}/#{version.after_colon}/eclipse-modeling-#{version.after_comma.before_colon}-#{version.after_colon}-macosx-cocoa-x86_64.tar.gz&r=1"
  name 'Eclipse Modeling Tools'
  homepage 'https://eclipse.org/'

  depends_on macos: '>= :leopard'

  app 'Eclipse.app'
end
