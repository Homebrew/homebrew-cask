cask 'foobar2000' do
  version '2.1.7'
  sha256 '750ab9ebb817a7f4f4dd6b9d17990619037a9b6f829bca8964455ee2c09929c6'

  url "https://www.foobar2000.org/files/264a0d9bf25006ad99fca992b6740779/foobar2000-v#{version}.dmg"
  name 'foobar2000'
  homepage 'https://www.foobar2000.org/'

  app 'foobar2000.app'
end
