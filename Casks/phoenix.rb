cask :v1 => 'phoenix' do
  version '1.2'
  sha256 'c01e1c8133dc7e59ac4289859f163ae2d843708ffd5c8225675bc0308179eff3'

  url 'https://github.com/keith/phoenix/releases/download/1.2/Phoenix.app.zip'
  name 'Phoenix'
  homepage 'https://github.com/keith/phoenix'
  license :mit

  app 'Phoenix.app'
end
