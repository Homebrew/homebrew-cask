cask "blender@lts" do
  arch arm: "arm64", intel: "x64"

  version "4.5.5"
  sha256 arm:   "de1d239d1326378744326bdf1a55f935cdd3d7e808eadd0d601bba28e06e05f6",
         intel: "f60c27f9a52ccde87e9e68ae8184e5c8c56f8b622d0657b345c64ad2b1232174"

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
