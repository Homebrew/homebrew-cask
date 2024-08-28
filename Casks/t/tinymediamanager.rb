cask "tinymediamanager" do
  arch arm: "aarch64", intel: "x86_64"

  version "5.0.10"
  sha256 arm:   "d22b66699bfac3f504f7af372beba9981069cef6f826479e6536ce82fefc8504",
         intel: "9ee624af934787aaa630715f4b2a21077b9614dfbf35b723b72a05111cbc62c8"

  url "https://release.tinymediamanager.org/v#{version.major}/dist/tinyMediaManager-#{version}-macos-#{arch}.dmg"
  name "tinyMediaManager"
  desc "Media management tool"
  homepage "https://www.tinymediamanager.org/"

  livecheck do
    url "https://release.tinymediamanager.org/"
    regex(/href=.*?v?(\d+(?:\.\d+)+)[._-]macos[._-]#{arch}\.dmg/i)
  end

  auto_updates true

  app "tinyMediaManager.app"

  zap trash: [
    "~/Library/Application Support/tinyMediaManager",
    "~/Library/Saved Application State/org.tinyMediaManager.tinymediamanager.savedState",
  ]
end
