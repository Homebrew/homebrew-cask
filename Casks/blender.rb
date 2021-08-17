cask "blender" do
  version "2.93.2"

  if Hardware::CPU.intel?
    sha256 "7f36e3f75d7b92c59b4d1053242772acbcdbaff6b20c929a382deba24cdd6a84"

    url "https://download.blender.org/release/Blender#{version.major_minor}/blender-#{version}-macos-x64.dmg"
  else
    sha256 "641b6b957dd371ca2ebadd614ea56517d6252c348f63b8ccb9b2fda32c9caa79"

    url "https://download.blender.org/release/Blender#{version.major_minor}/blender-#{version}-macos-arm64.dmg"
  end

  name "Blender"
  desc "3D creation suite"
  homepage "https://www.blender.org/"

  livecheck do
    url "https://www.blender.org/download/"
    regex(%r{href=.*?/blender[._-]v?(\d+(?:\.\d+)+)[._-]macos[._-]}i)
  end

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

  zap trash: [
    "~/Library/Application Support/Blender",
    "~/Library/Saved Application State/org.blenderfoundation.blender.savedState",
  ]
end
