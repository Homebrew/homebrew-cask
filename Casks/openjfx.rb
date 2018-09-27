cask 'openjfx' do
  version '11'
  sha256 'adabd9332993519e8ad69c5412a9acb00443e3b80a15c3d372a99b064a94873c'

  # download2.gluonhq.com/openjfx/ was verified as official when first introduced to the cask
  url "http://download2.gluonhq.com/openjfx/#{version}/openjfx-#{version}_osx-x64_bin-sdk.zip"
  name 'OpenJFX'
  homepage 'https://openjfx.io/'

  postflight do
    system_command '/bin/cp',
                   args: ['-rp', staged_path.to_s, '/usr/local/lib/OpenJFX']
  end

  uninstall_postflight do
    next unless File.exist?('/usr/local/lib/OpenJFX')

    system_command '/bin/rm',
                   args: ['-rf', '/usr/local/lib/OpenJFX']
  end
end
