cask 'subutai-tray' do
  version '6.0.1' # Needed for not re-dowloading while testing
  sha256 'd19c506d0d8eea6152eaed5ab58c3eeb575d00bb7e1f1c986b6cfa112d014e2d' # Needed for not re-dowloading while testing

  # version :latest
  # sha256 :no_check

  # cdn.subut.ai:8338/kurjun/rest/raw/ was verified as official when first introduced to the cask
  url 'https://cdn.subut.ai:8338/kurjun/rest/raw/get?name=subutai-tray.pkg'
  name 'Subutai Tray'
  homepage 'https://subutai.io/'

  auto_updates true
  depends_on macos: '>= :Leopard'

  # container type: :pkg

  # installer manual: 'subutai-tray.pkg'
  # From blue-jeans-browser-plugin.rb
  # pkg 'subutai-tray.pkg'
  # container type: :naked,
  #           nested: 'Scripts'
  # pkg 'subutai-tray.pkg'
  # container type: :naked,
  #           nested: 'base.pkg/Scripts'

  # installer script: {
  #                      executable: "#{staged_path}/Distribution",
  #                      args:       ['-install'],
  #                      sudo:       true,
  #                    }

  # container nested: (nested_container = 'subutai-tray.pkg') #from decitime.rb
  # container nested: (nested_container = 'base.pkg') #from decitime.rb

  pkg 'subutai-tray.pkg'

  # # pkg_relative_path 'subutai-tray.pkg#base.pkg',
  # # container nested: 'subutai-tray.pkg'
  # pkg 'base.pkg'
  # # pkg 'subutai-tray.pkg#base.pkg',
  #     choices: [
  #                {
  #                  'choiceIdentifier' => 'choice1',
  #                  'choiceAttribute'  => 'selected',
  #                  'attributeSetting' => 1,
  #                },
  #              ]

  uninstall pkgutil: 'com.Subutai.Tray'
end
