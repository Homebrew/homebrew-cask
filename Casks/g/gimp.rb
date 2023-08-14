cask "gimp" do
  arch arm: "arm64", intel: "x86_64"

  version "2.10.34-2"
  sha256 arm:   "6f858183e81f67871d9beea265cb223b8d8b65921159d8b00b2f19b210528631",
         intel: "acaf008ac41a87a9fdc7d810e3a33cb8ef08914a0955a57bfb9701267cfc568e"

  url "https://download.gimp.org/gimp/v#{version.major_minor}/macos/gimp-#{version}-#{arch}.dmg"
  name "GIMP"
  name "GNU Image Manipulation Program"
  desc "Free and open-source image editor"
  homepage "https://www.gimp.org/"

  livecheck do
    url "https://www.gimp.org/downloads/"
    regex(%r{href=.*?/gimp[._-]v?(\d+(?:\.\d+)+(-\d)?)[._-]#{arch}\.dmg}i)
  end

  conflicts_with cask: "homebrew/cask-versions/gimp-dev"

  app "GIMP.app"
  shimscript = "#{staged_path}/gimp.wrapper.sh"
  binary shimscript, target: "gimp"

  preflight do
    File.write shimscript, <<~EOS
      #!/bin/sh
      "#{appdir}/GIMP.app/Contents/MacOS/gimp" "$@"
    EOS
  end

  zap trash: [
    "~/Library/Application Support/Gimp",
    "~/Library/Preferences/org.gimp.gimp-#{version.major_minor}:.plist",
    "~/Library/Saved Application State/org.gimp.gimp-#{version.major_minor}:.savedState",
  ]
end
