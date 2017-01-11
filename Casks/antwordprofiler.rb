cask 'antwordprofiler' do
  version '1.4.1'
  sha256 'b7cea938e38001b54fce28d1efb1336bbfe4f5af37559c7b3ffd3a14a8aed608'

  url "http://www.laurenceanthony.net/software/antwordprofiler/releases/AntWordProfiler#{version.no_dots}/AntWordProfiler.zip"
  appcast 'http://www.laurenceanthony.net/software/antwordprofiler/releases/',
          checkpoint: 'e90c95c59a2d69fe1bc13b2a3b8a16adb72c6c3d767660c51eee418a24db20fd'
  name 'AntWordProfiler'
  homepage 'http://www.laurenceanthony.net/software/antwordprofiler/'

  app 'AntWordProfiler.app'
end
