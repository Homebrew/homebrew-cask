cask :v1 => 'pandora' do
  version '2.0.8'
  sha256 '9ac216fd51bb063f020a86c6f5d250989dfa033a2d6a3d703124c2f4bfa510d8'

  url "https://www.pandora.com/static/desktop_app/pandora_#{version.gsub('.','_')}.air"
  homepage 'http://www.pandora.com/'
  license :unknown

  app 'Pandora.app'
end
