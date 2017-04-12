cask 'eclipse-modeling' do
  version '4.6.3,neon:3'
  sha256 '2d1bdc6c1c776697a64c7451bcc11021fc056673230a9a7ca9078f4ef8044d95'

  url "https://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/#{version.after_comma.before_colon}/#{version.after_colon}/eclipse-modeling-#{version.after_comma.before_colon}-#{version.after_colon}-macosx-cocoa-x86_64.tar.gz&r=1"
  name 'Eclipse Modeling Tools'
  homepage 'https://eclipse.org/'

  depends_on macos: '>= :leopard'

  # Renamed to avoid conflict with other Eclipse.
  app 'Eclipse.app', target: 'Eclipse Modeling.app'
end
