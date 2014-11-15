cask :v1 => 'butter' do
  version '0.1.5'
  sha256 '32c9c20453bb4702e10f4d51e93b316eb0f9d4cc57224c526cc5050346913099'

  url "https://github.com/harukasan/butter/releases/download/v#{version}/Butter_#{version}.dmg"
  homepage 'https://github.com/harukasan/butter'
  license :mit

  app 'Butter.app'
end
