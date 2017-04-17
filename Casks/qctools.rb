cask 'qctools' do
  version '0.8'
  sha256 'd3cfaeeaf74fe2bdc90d37e3ae22d3c429c2fdeb89fb1f0466150f9ad0c23d51'

  url "https://github.com/bavc/qctools/releases/download/v#{version.major_minor_patch}/QCTools_#{version}_mac.dmg"
  appcast 'https://github.com/bavc/qctools/releases.atom',
          checkpoint: '85e48dfbc70a96cf01b636dd382f2e7c28cc788d128a5009072c1a5829822e6c'
  name 'QCTools'
  homepage 'https://github.com/bavc/qctools'

  app 'QCTools.app'
end
