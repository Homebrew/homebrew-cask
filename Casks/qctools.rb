cask 'qctools' do
  version '0.8fix1'
  sha256 'a3ab7b29af8a5baff47b337acdd99bc2eb34bc9862807c2c68508d884a519f46'

  url "https://github.com/bavc/qctools/releases/download/v#{version.major_minor_patch}/QCTools_#{version}_mac.dmg"
  appcast 'https://github.com/bavc/qctools/releases.atom',
          checkpoint: '85e48dfbc70a96cf01b636dd382f2e7c28cc788d128a5009072c1a5829822e6c'
  name 'QCTools'
  homepage 'https://github.com/bavc/qctools'

  app 'QCTools.app'
end
