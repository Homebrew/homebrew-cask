class IstatMenus < Cask
  version '5.0'
  sha256 'eecd18c166c47fa4f835e773ba9260fc6943a2ae0e743f42802c0b51e62b932b'

  # Upon major version bump, the download url will likely change accordingly
  url "https://s3.amazonaws.com/bjango/files/istatmenus5/istatmenus#{version}.zip"
  homepage 'http://bjango.com/mac/istatmenus/'

  link 'iStat Menus.app'
end
