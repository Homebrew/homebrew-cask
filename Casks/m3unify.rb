cask 'm3unify' do
  version '1.10.1'
  sha256 'e81d5ef313d262aae67e1c94d6f656e405cfec4c4a1ea5a7dc25cb2511f3f318'

  url "https://dougscripts.com/itunes/scrx/m3unifyv#{version.no_dots}.zip"
  appcast 'https://dougscripts.com/itunes/itinfo/m3unify_appcast.xml'
  name 'M3Unify'
  homepage 'https://dougscripts.com/apps/m3unifyapp.php'

  app 'M3Unify.app'
end
