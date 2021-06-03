cask "blender" do
  version "2.93.0"

  if Hardware::CPU.intel?
    sha256 "8d5b1ab508c99aa9ddfabef02c13583f0cb31046f5e3bc33db477dbb940e6745"

    url "https://download.blender.org/release/Blender#{version.major_minor}/blender-#{version}-macos-x64.dmg"
  else
    sha256 "7a433d3254d212b6c809885dc22fe94727cf03839f50c2605946e52d8b06a336"

    url "https://download.blender.org/release/Blender#{version.major_minor}/blender-#{version}-macos-arm64.dmg"
  end

  name "Blender"
  desc "Free and open-source 3D creation suite"
  homepage "https://www.blender.org/"

  livecheck do
    url "https://www.blender.org/download/"
    strategy :page_match
    regex(%r{href=.*?/blender-(\d+(?:\.\d+)*)-macos-}i)
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
