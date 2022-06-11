cask "blender" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "3.2.0"

  url "https://download.blender.org/release/Blender#{version.major_minor}/blender-#{version}-macos-#{arch}.dmg"
  if Hardware::CPU.intel?
    sha256 "af3222a0782bbef0f10d77abf2e3bd458779266b9b5d5b527d0e3197ae0e8dca"
  else
    sha256 "f6a7327a9dd8e1d8aa6a34ad1327677344131c4d483f85eca5ae54d002bfbadf"
  end

  name "Blender"
  desc "3D creation suite"
  homepage "https://www.blender.org/"

  livecheck do
    url "https://www.blender.org/download/"
    regex(%r{href=.*?/blender[._-]v?(\d+(?:\.\d+)+)[._-]macos[._-]#{arch}\.dmg}i)
  end

  conflicts_with cask: "homebrew/cask-versions/blender-lts"
  depends_on macos: ">= :high_sierra"

  app "Blender.app"
  # shim script (https://github.com/Homebrew/homebrew-cask/issues/18809)
  shimscript = "#{staged_path}/blender.wrapper.sh"
  binary shimscript, target: "blender"

  preflight do
    # make __pycache__ directories writable, otherwise uninstall fails
    FileUtils.chmod "u+w", Dir.glob("#{staged_path}/*.app/**/__pycache__")

    File.write shimscript, <<~EOS
      #!/bin/bash
      '#{appdir}/Blender.app/Contents/MacOS/Blender' "$@"
    EOS
  end

  zap trash: [
    "~/Library/Application Support/Blender",
    "~/Library/Saved Application State/org.blenderfoundation.blender.savedState",
  ]
end
