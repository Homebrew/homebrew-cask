cask 'phocus' do
  version '3.3.7,2018.10'
  sha256 '495244f22eba22da844ffc1b670a16cc0d20fd0603ff0f6aa1cd6792854bcc17'

  url "https://static.hasselblad.com/#{version.after_comma.dots_to_slashes}/Phocus-#{version.before_comma}.dmg"
  name 'Hasselblad Phocus'
  homepage 'https://www.hasselblad.com/software/phocus'

  app 'Phocus.app'
end
