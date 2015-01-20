cask :v1 => 'aviator' do
  version :latest
  sha256 :no_check

  # aviatorbrowser.com is the official download host per the vendor homepage
  url 'https://updates.aviatorbrowser.com/Aviator.dmg'
  name 'WhiteHat Aviator'
  homepage 'https://www.whitehatsec.com/aviator/'
  license :oss

  app 'Aviator.app'
end
