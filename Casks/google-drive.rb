cask :v1 => 'google-drive' do
  version :latest
  sha256 :no_check

  url 'https://dl.google.com/drive/installgoogledrive.dmg'
  homepage 'https://drive.google.com/'
  license :unknown

  app 'Google Drive.app'
end
