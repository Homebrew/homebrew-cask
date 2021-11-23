cask "blender" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "2.93.6"

  url "https://download.blender.org/release/Blender#{version.major_minor}/blender-#{version}-macos-#{arch}.dmg"
  if Hardware::CPU.intel?
    sha256 "db703fbd60713f0b4270fc406b7a270d136bb6ae22a649b733fad4f61177b58d"
  else
    sha256 "1290068841b6bc3404632e7174a7d374dba932e4d2bc5f1cf39717a195cf0777"
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
