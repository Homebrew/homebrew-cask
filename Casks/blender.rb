cask 'blender' do
  version '2.83.0'
  sha256 '5573b491f1190ca828f6dd0024cad18dab0c379ce44cd63a1622154ace4b8295'

  url "https://download.blender.org/release/Blender#{version.major_minor.delete('a-z')}/blender-#{version}-macOS.dmg"
  appcast 'https://download.blender.org/release/',
          configuration: version.delete('a-z')
  name 'Blender'
  homepage 'https://www.blender.org/'

  app 'Blender.app'
  # shim script (https://github.com/Homebrew/homebrew-cask/issues/18809)
  shimscript = "#{staged_path}/blender.wrapper.sh"
  binary shimscript, target: 'blender'

  preflight do
    # make __pycache__ directories writable, otherwise uninstall fails
    FileUtils.chmod 'u+w', Dir.glob("#{staged_path}/*.app/**/__pycache__")

    IO.write shimscript, <<~EOS
      #!/bin/bash
      '#{appdir}/Blender.app/Contents/MacOS/Blender' "$@"
    EOS
  end
end
