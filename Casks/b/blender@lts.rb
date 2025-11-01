cask "blender@lts" do
  arch arm: "arm64", intel: "x64"

  version "4.5.4"
  sha256 arm:   "7d6bd807563f0af65735cf9e21b788f6ac78bc5ceb87b96c424459785a13cd60",
         intel: "9194d5cd6c8250e7f04591d430ec3f6da7bc57fc1fa5ae155736bf0f3013553e"

  url "https://download.blender.org/release/Blender#{version.major_minor}/blender-#{version}-macos-#{arch}.dmg"
  name "Blender"
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
