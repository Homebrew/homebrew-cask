cask :v1 => 'subl' do
  version '1.2'
  sha256 '2f66cd6f873b51fa7bf31a6fe0bff1af4ac2cf0d9fff21a4b0f647c1cdcd6eef'

  url "https://github.com/dhoulb/subl/releases/download/v#{version}/Subl.app.zip"
  homepage 'https://github.com/dhoulb/subl'
  license :oss

  app 'Subl.app'
end
