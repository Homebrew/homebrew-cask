cask "tinymediamanager" do
  version "4.3.13"
  sha256 "355e0525ad7c6c4add572f9e3806e9d5c9369179c1f6b663b5b4f36aa73b6dc6"

  url "https://release.tinymediamanager.org/v#{version.major}/dist/tmm_#{version}_macos-x86_64.zip"
  name "tinyMediaManager"
  desc "Media management tool"
  homepage "https://www.tinymediamanager.org/"

  livecheck do
    url "https://release.tinymediamanager.org/"
    regex(%r{href=.*?/tmm[._-]v?(\d+(?:\.\d+)+)[._-]macos[._-]x86[._-]64\.zip}i)
  end

  auto_updates true

  app "tinyMediaManager.app"

  # No zap stanza required
end
