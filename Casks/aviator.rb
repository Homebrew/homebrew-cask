cask :v1 => 'aviator' do
  version :latest
  sha256 :no_check

  url 'https://updates.aviatorbrowser.com/Aviator.dmg'
  name 'WhiteHat Aviator'
  homepage 'https://www.whitehatsec.com/aviator/'
  license :oss

  app 'Aviator.app'
end
