cask 'coreos-ct' do
  version '0.4.2'
  sha256 'eb38e78ff40c9fc41592fb6521d8f95e0a0433d42901f51d6b6d294e487f0118'

  url "https://github.com/coreos/container-linux-config-transpiler/releases/download/v#{version}/ct-v#{version}-x86_64-apple-darwin"
  name 'Container Linux Config Transpiler'
  homepage 'https://github.com/coreos/container-linux-config-transpiler'
  gpg "#{url}.asc", key_id: '18AD5014C99EF7E3BA5F6CE950BDD3E0FC8A365E'

  preflight do
    system_command '/bin/mv', args:
                                    ["/usr/local/Caskroom/coreos-ct/#{version}/ct-v#{version}-x86_64-apple-darwin",
                                     '/usr/local/Caskroom/coreos-ct/0.4.2/coreos-ct']
  end
end
