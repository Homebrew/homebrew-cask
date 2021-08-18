cask "blender" do
  version "2.93.3"

  if Hardware::CPU.intel?
    sha256 "902d8c3ba23764cba2c1b5b2ea30c88053ee9dae3baa647968eb553beb2d40ce"

    url "https://download.blender.org/release/Blender#{version.major_minor}/blender-#{version}-macos-x64.dmg"
  else
    sha256 "f86dc8ac1a7f4e82f797434afb0866d69f7bb75dbddec3cc0f794679e35b7770"

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
