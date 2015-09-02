cask :v1 => 'snapheal-pro' do
  version :latest
  sha256 :no_check

  url 'https://s3-eu-west-1.amazonaws.com/snapheal/SnaphealPro.dmg'
  name 'Snapheal Pro'
  homepage 'http://macphun.com/snapheal'
  license :commercial

  app 'Snapheal Pro.app'
end

