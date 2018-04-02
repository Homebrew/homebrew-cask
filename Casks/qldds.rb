cask 'qldds' do
  version '1.33'
  sha256 '7342f788f750bf4f40e84f6fcbfefb4603e78d00c99d55fae4ba65a78f9ff20f'

  url "https://github.com/Marginal/QLdds/releases/download/rel-#{version.no_dots}/QLdds_#{version.no_dots}.pkg"
  appcast 'https://github.com/Marginal/QLdds/releases.atom',
          checkpoint: '27823a9808e826a1ced536feeac0816913c2e8d228a7af058f7b8122632f81f3'
  name 'QuickLook DDS'
  homepage 'https://github.com/Marginal/QLdds'

  pkg "QLdds_#{version.no_dots}.pkg"

  uninstall pkgutil:   'uk.org.marginal.qldds',
            launchctl: 'uk.org.marginal.qldds.mdimporter'
end
