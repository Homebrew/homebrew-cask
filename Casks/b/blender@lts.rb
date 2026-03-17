cask "blender@lts" do
  arch arm: "arm64", intel: "x64"

  version "4.5.8"
  sha256 arm:   "d0fc2638b0fcbe6742ca7de30f56e700cfe641c69206260f00e8686282de8ed6",
         intel: "b73378af13eb1d1539f7a6d0fb9a598031d20e1e697b30d8c8c683b90b395a84"

  url "https://download.blender.org/release/Blender#{version.major_minor}/blender-#{version}-macos-#{arch}.dmg"
  name "Blender LTS"
  desc "3D creation suite"
  homepage "https://www.blender.org/"

  # The upstream LTS page (https://www.blender.org/download/lts/) cannot be
  # fetched due to Cloudflare protections and we can't tell which versions are
  # LTS simply from the version number, so this will have to be manually
  # checked.
  livecheck do
    skip "Cannot be fetched due to Cloudflare protections"
  end

  conflicts_with cask: "blender"
  depends_on macos: ">= :big_sur"

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
