cask "tinymediamanager" do
  arch arm: "aarch64", intel: "x86_64"

  version "5.2.10"
  sha256 arm:   "95acc84bbd5682c0cc7ecad2d3fa801c166ee4038ef7a830c16ddcdfe2d4c9f2",
         intel: "3a18f46b1650d7ee7a2ee206d23695bf2516ae6941da9fe13d44951502479c44"

  url "https://release.tinymediamanager.org/v#{version.major}/dist/tinyMediaManager-#{version}-macos-#{arch}.dmg"
  name "tinyMediaManager"
  desc "Media management tool"
  homepage "https://www.tinymediamanager.org/"

  livecheck do
    url "https://release.tinymediamanager.org/"
    regex(/href=.*?v?(\d+(?:\.\d+)+)[._-]macos[._-]#{arch}\.dmg/i)
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "tinyMediaManager.app"

  zap trash: [
    "~/Library/Application Support/tinyMediaManager",
    "~/Library/Saved Application State/org.tinyMediaManager.tinymediamanager.savedState",
  ]
end
