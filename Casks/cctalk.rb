cask 'cctalk' do
  version '0.8.1-204,2017-04-17.19.56'
  sha256 '7b3d9e44b675709cf731183d28cd0385f712d263e1403a03d041d30882388fa2'

  # f1.ct.hjfile.cn was verified as official when first introduced to the cask
  url "http://f1.ct.hjfile.cn/api/AutoUpdate/newupdate/out/mac/cctalk/archive/#{version.before_comma.hyphens_to_dots}/CCtalk-#{version.before_comma}-hujiang-#{version.after_comma}.dmg"
  appcast 'http://f1.ct.hjfile.cn/api/AutoUpdate/newupdate/out/mac/cctalk/update/info.xml',
          checkpoint: '8fd173a6b2ec2f22ea0144dd21c74a8bc0faf4ba010ded0f8d16c4865c1261c1'
  name 'CCTalk'
  homepage 'https://www.cctalk.com/download/'

  app 'CCtalk.app'
end
