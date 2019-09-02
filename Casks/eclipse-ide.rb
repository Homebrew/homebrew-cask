cask 'eclipse-ide' do
  version '4.12.0,2019-06:R'
  sha256 'c2f05fa10a6151f8f41cec3c028f4ec1bef7153cc86b46d06d0eacbdf14d1b5f'

  url "https://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/#{version.after_comma.before_colon}/#{version.after_colon}/eclipse-committers-#{version.after_comma.before_colon}-#{version.after_colon}-macosx-cocoa-x86_64.dmg&r=1"
  name 'Eclipse IDE for Eclipse Committers'
  homepage 'https://eclipse.org/'

  app 'Eclipse.app'
end
