cask 'brisk' do
  version '0.1.0'
  sha256 '3de7cc22325f51e66b8f9f9464a3f393dfd05db5c7173252021d1680bcb7afe6'

  url "https://github.com/br1sk/brisk/releases/download/#{version}/Brisk.app.tar.gz"
  appcast 'https://github.com/br1sk/brisk/releases.atom',
          checkpoint: '55ae5423e649caa47eb526ae7c13eafb4cf1b7e0be6072a09504c3d593ff60fc'
  name 'Brisk'
  homepage 'https://github.com/br1sk/brisk'

  app 'Brisk.app'
end
