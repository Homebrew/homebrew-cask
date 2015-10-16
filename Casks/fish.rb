cask :v1 => 'fish' do
  version '2.1.1'
  sha256 '257c112d1d200b8a4af556678fea62be286be76e96db5abe626fac0182870997'

  url "http://fishshell.com/files/#{version}/fish.pkg"
  name 'Fish'
  name 'Fish Shell'
  homepage 'http://fishshell.com'
  license :gpl

  pkg 'fish.pkg'

  uninstall :pkgutil => 'com.ridiculousfish.fish-shell-pkg'
end
