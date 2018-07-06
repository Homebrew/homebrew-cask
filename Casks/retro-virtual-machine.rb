cask 'retro-virtual-machine' do
  version '1.1.7'
  sha256 'a31930bcc63d9dd69e43b84376a11d8d86064b15fc0e47a0acb29c86b964e09f'

  url "http://static1.retrovirtualmachine.org/release/Retro%20Virtual%20Machine%20v#{version}.dmg"
  appcast 'http://www.retrovirtualmachine.org/en/changelog'
  name 'Retro Virtual Machine'
  homepage 'http://www.retrovirtualmachine.org/'

  app 'Retro Virtual Machine.app'
end
