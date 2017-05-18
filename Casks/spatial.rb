cask 'spatial' do
  version :latest
  sha256 :no_check

  url 'https://console.improbable.io/toolbelt/download/latest/mac'
  name 'Spatial'
  homepage 'https://spatialos.improbable.io/docs'

  auto_updates true
  container type: :naked

  binary 'mac', target: 'spatial'

  postflight do
    puts 'Setting cli-structure to v2 (current).'
    `spatial config set cli-structure v2`
  end
end
