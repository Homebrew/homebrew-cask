cask 'blender' do
  version '2.78c'
  sha256 'cf24ac9a65ae58cee7f36681a1f6381fe1a51475b3291b7eb0b727d46eaf89ea'

  url "https://download.blender.org/release/Blender#{version.major_minor}/blender-#{version}-OSX_10.6-x86_64.zip"
  name 'Blender'
  homepage 'https://www.blender.org/'

  # Renamed for consistency: app name is different in the Finder and in a shell.
  app "blender-#{version}-OSX_10.6-x86_64/blender.app", target: 'Blender.app'
  app "blender-#{version}-OSX_10.6-x86_64/blenderplayer.app", target: 'Blenderplayer.app'
  # shim script (https://github.com/caskroom/homebrew-cask/issues/18809)
  shimscript = "#{staged_path}/blender.wrapper.sh"
  binary shimscript, target: 'blender'

  preflight do
    # make __pycache__ directories writable, otherwise uninstall fails
    FileUtils.chmod 'u+w', Dir.glob("#{staged_path}/*.app/**/__pycache__")

    IO.write shimscript, <<-EOS.undent
      #!/bin/bash
      '#{appdir}/Blender.app/Contents/MacOS/blender' "$@"
    EOS
  end
end
