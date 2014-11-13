cask :v1 => 'boinxtv' do
  version '1.9.9-17091'
  sha256 'aeb95fc09c80975e25bd2a584807b408bb219bf39c099d6730bc8983cfedf7b6'

  url "https://cdn.boinx.com/software/boinxtv/Boinx_BoinxTV_#{version}.app.zip"
  homepage 'http://boinx.com/boinxtv/'
  license :commercial

  app 'BoinxTV.app'
end
