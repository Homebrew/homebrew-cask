cask 'colorpicker-materialdesign' do
  version '1.0.0'
  sha256 'e00b2ba5cc4c011b5f32bbb40dd9c997b7777923e6f5c4ce158cb746dafccf72'

  url "https://github.com/CodeCatalyst/MaterialDesignColorPicker/releases/download/v#{version}/MaterialDesignColorPicker.colorPicker.zip"
  appcast 'https://github.com/CodeCatalyst/MaterialDesignColorPicker/releases.atom',
          checkpoint: 'e166eb2943a6f25491133aff5b9777c69cf04e1bbfabeb9f98e9d34aec696ace'
  name 'Material Design'
  homepage 'https://github.com/CodeCatalyst/MaterialDesignColorPicker'

  depends_on macos: '>= :el_capitan'

  colorpicker 'MaterialDesignColorPicker.colorPicker'
end
