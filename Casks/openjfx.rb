cask 'openjfx' do
  version '11'
  sha256 'adabd9332993519e8ad69c5412a9acb00443e3b80a15c3d372a99b064a94873c'

  # `download2.gluonhq.com/openjfx` was verified as official when first introduced to the cask.
  url "http://download2.gluonhq.com/openjfx/#{version}/openjfx-#{version}_osx-x64_bin-sdk.zip"
  name 'OpenJFX'
  homepage 'https://openjfx.io/'

  # `/Library/Java/Extensions` is the Apple-recommended location for system-wide Java extension
  # libraries on macOS, as documented at `https://developer.apple.com/library/archive/qa/qa1170/_in-
  # dex.html` in its section on 'Extension Libraries:'
  postflight do
    FileUtils.cp_r(staged_path.to_s, '/Library/Java/Extensions/OpenJFX')
  end

  uninstall_postflight do
    FileUtils.rm_rf ['/Library/Java/Extensions/OpenJFX']
  end

  caveats do
    # Per a statement at the bottom of `https://openjfx.io/openjfx-docs/`:
    depends_on_java '11'
  end
end
