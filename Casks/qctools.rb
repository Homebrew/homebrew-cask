cask 'qctools' do
  version '1.0'
  sha256 'ee4ab0803dc387ad4475544ba3f97ccd5126d3f237d5349bebae48bef18b85a9'

  url "https://github.com/bavc/qctools/releases/download/v#{version.major_minor_patch}/QCTools.Mac.-.QCTools_#{version}_mac.dmg"
  appcast 'https://github.com/bavc/qctools/releases.atom'
  name 'QCTools'
  homepage 'https://github.com/bavc/qctools'

  app 'QCTools.app'
end
