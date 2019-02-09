cask 'gray' do
  version '0.9.13'
  sha256 'e47794cfc78419129b25c66e57fc642dc9a5f88095d01a0a8c52acbf6e1ef0a2'

  url "https://github.com/zenangst/Gray/releases/download/#{version}/Gray.zip"
  appcast 'https://github.com/zenangst/Gray/releases.atom'
  name 'Gray'
  homepage 'https://github.com/zenangst/Gray'

  depends_on macos: '>= :mojave'

  app 'Gray.app'
end
