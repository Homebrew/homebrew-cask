cask :v1 => 'subtitle-master' do
  version '0.6'
  sha256 'c2a4fe372f0840cdbb4fb8d6ae9d689b516d97a04ea082773308d6a65dc75f60'

  url "http://updates.subtitlemaster.com/app/Subtitle%20Master%20#{version}.zip"
  appcast 'http://updates.subtitlemaster.com',
          :sha256 => '07bc4aa2178fd8851caa8b4c78050c48a02358d5afc59c110d715faffc2e2479'
  homepage 'http://subtitlemaster.com/'
  license :unknown

  app 'Subtitle Master.app'
end
