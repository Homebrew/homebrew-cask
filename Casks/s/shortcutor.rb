cask "shortcutor" do
  version "2021.1.4"
  sha256 "9acacb652a31e4dfd1343184976f64fedfe1a0f01b56a3190a9ae42bff30bc08"

  url "https://cdn.shortcutor.com/download/darwin/Shortcutor-#{version}.dmg"
  name "Shortcutor"
  desc "iOS shortcuts editor"
  homepage "https://shortcutor.com/"

  livecheck do
    url "https://shortcutor.com/getfile.html"
    regex(%r{href=.*?/Shortcutor[._-]?v?(\d+(?:\.\d+)+)\.dmg}i)
  end

  depends_on macos: ">= :sierra"

  app "Shortcutor.app"

  uninstall quit: "Shortcutor"

  zap trash: [
    "~/Library/Application Support/Shortcutor",
    "~/Library/Logs/Shortcutor",
    "~/Library/Preferences/com.shortcutor.shortcutor.plist",
  ]
end
