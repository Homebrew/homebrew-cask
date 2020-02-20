cask 'blender' do
  version '2.82'
  sha256 '509b4235e589bc7a5794f484ba6c1ca9807c18d4e87e4f22576b4cc0be4bc383'

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
