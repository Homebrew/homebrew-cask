cask 'qctools' do
  version '0.8fix1'
  sha256 'a3ab7b29af8a5baff47b337acdd99bc2eb34bc9862807c2c68508d884a519f46'

  url "https://github.com/bavc/qctools/releases/download/v#{version.major_minor_patch}/QCTools_#{version}_mac.dmg"
  appcast 'https://github.com/bavc/qctools/releases.atom',
          checkpoint: 'b9de9aa7936bba0d6c5a9137d8d85e07f9abcddd4e90332c727693761cbeab9f'
  name 'QCTools'
  homepage 'https://github.com/bavc/qctools'

  app 'QCTools.app'
end
