cask 'kitty' do
  version '0.8.4'
  sha256 'a116197a8c1807455f53494674c28de33d09ca484709819a6d3f0a8f4e9e659e'

  url "https://github.com/kovidgoyal/kitty/releases/download/v#{version}/kitty-#{version}.dmg"
  appcast 'https://github.com/kovidgoyal/kitty/releases.atom',
          checkpoint: '7749a4e546bd871aafbf7e5ee8b4598ee71191eff58736a93a531eed3000823e'
  name 'kitty'
  homepage 'https://github.com/kovidgoyal/kitty'

  app 'kitty.app'
end
