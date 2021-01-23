cask "blender" do
  version "2.91.2"
  sha256 "269ae25c10b55d33d311bd6d6519e5b2d5670a607dee0cdefe59afcc16fbc9b6"

  url "https://download.blender.org/release/Blender#{version.major_minor}/blender-#{version}-macOS.dmg"
  appcast "https://download.blender.org/release/",
          must_contain: version.major_minor.delete("a-z")
  name "Blender"
  desc "Free and open-source 3D creation suite"
  homepage "https://www.blender.org/"

  conflicts_with cask: "homebrew/cask-versions/blender-lts"

  app "Blender.app"
  # shim script (https://github.com/Homebrew/homebrew-cask/issues/18809)
  shimscript = "#{staged_path}/blender.wrapper.sh"
  binary shimscript, target: "blender"

  preflight do
    # make __pycache__ directories writable, otherwise uninstall fails
    FileUtils.chmod "u+w", Dir.glob("#{staged_path}/*.app/**/__pycache__")

    IO.write shimscript, <<~EOS
      #!/bin/bash
      '#{appdir}/Blender.app/Contents/MacOS/Blender' "$@"
    EOS
  end
end
