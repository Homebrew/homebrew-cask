cask "blender@lts" do
  arch arm: "arm64", intel: "x64"

  version "4.5.10"
  sha256 arm:   "cf3076fd531e74713f858830b558e71ffae7b26f104608c5c2cb2fc123535f16",
         intel: "255cc3f2cfeeedd51f365b3bb68b8641d56001ab02ddb73b76ddeb41a9dd4dde"

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
  depends_on macos: :big_sur

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
