cask 'fish' do
  version '2.2.0'
  sha256 '8e430d1cadec82aa0c3c757ec6ee24abc18aa5d432ccf435dd9f8a58588970bc'

  url "http://fishshell.com/files/#{version}/fish.pkg"
  name 'Fish Shell'
  homepage 'http://fishshell.com'
  license :gpl

  pkg 'fish.pkg'

  uninstall pkgutil: 'com.ridiculousfish.fish-shell-pkg'
end
