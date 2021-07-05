cask "blender" do
  version "2.93.1"

  if Hardware::CPU.intel?
    sha256 "8f9da1657c32c6519650642c3533b9b97284d2a96d64e8e8b2ed711ffce3cd7b"

    url "https://download.blender.org/release/Blender#{version.major_minor}/blender-#{version}-macos-x64.dmg"
  else
    sha256 "578439366d31a5c29e175a07cc80c506be09e0c6ab0f23e8a1beb62a372404ae"

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
