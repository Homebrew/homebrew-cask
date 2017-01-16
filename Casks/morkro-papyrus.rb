cask 'morkro-papyrus' do
  version '1.0.0'
  sha256 'cd88cd942504aa676879d86ba7c435ba8250db05525f0482a0c3812d069abf21'

  url "https://github.com/morkro/papyrus/releases/download/#{version}/Papyrus-osx-#{version}.zip"
  appcast 'https://github.com/morkro/papyrus/releases.atom',
          checkpoint: '8c12e03261b6509c4f1c3269fa0ab07324095c829f7cff3cc309b77c60ecc0a8'
  name 'Papyrus'
  homepage 'https://github.com/morkro/papyrus'

  app 'Papyrus.app'
end
